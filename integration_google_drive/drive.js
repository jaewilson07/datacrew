function replaceSectionInGoogleDoc(
  docId,
  headerName,
  headerType,
  replacementContent
) {
  console.log(docId, replacementContent);

  var doc = DocumentApp.openById(docId);
  var body = doc.getBody();
  var paragraphs = body.getParagraphs();

  var inSection = false;
  var paragraphsToRemove = [];
  var sectionIndex = -1;
  for (var ppt_idx = 0; ppt_idx < paragraphs.length; ppt_idx++) {
    var paragraph = paragraphs[ppt_idx];
    var heading = paragraph.getHeading();

    // Check if we're at the specified heading
    if (heading === headerType && paragraph.getText() === headerName) {
      inSection = true;
      sectionIndex = ppt_idx;
      continue;
    }

    // If we're in the section and we reach another heading or the end of the document, stop
    if (
      inSection &&
      (heading !== DocumentApp.ParagraphHeading.NORMAL ||
        ppt_idx === paragraphs.length - 1)
    ) {
      break;
    }

    // If we're in the section, mark the paragraph for removal
    if (inSection) {
      paragraphsToRemove.push(paragraph);
    }
  }

  // Remove the marked paragraphs
  for (var rm_idx = 0; rm_idx < paragraphsToRemove.length; rm_idx++) {
    body.removeChild(paragraphsToRemove[rm_idx]);
  }

  // Add the new content under the specified heading
  if (inSection) {
    body.insertParagraph(sectionIndex + 1, replacementContent);
  } else {
    // If the section was not found, add the heading and content at the end of the document
    body.appendParagraph(headerName).setHeading(headerType);
    body.appendParagraph(replacementContent);
  }
}

function generateGoogleDocsLinkStr(docId, docName) {
  // Create the URL to the document
  var docUrl = "https://docs.google.com/document/d/" + docId;

  // Create the link text
  var linkText = "[" + docName + "](" + docUrl + ")\n";

  return linkText;
}

function generateGoogleDocsLinksStr(docList) {
  linkStr = "";

  // Add a new line for each child
  docList.forEach(function (doc) {
    // Get the child docId and title
    var cDocId = doc[0];
    var cDocTitle = doc[1];

    // Generate the link text
    var linkText = generateGoogleDocsLinkStr(cDocId, cDocTitle);

    // Add the link text to the links body
    linkStr += linkText + "\n";
  });

  return linkStr;
}

function convertMarkdownUrls(docId) {
  var doc = DocumentApp.openById(docId);
  var body = doc.getBody();
  var numElements = body.getNumChildren();

  for (var elementIndex = 0; elementIndex < numElements; elementIndex++) {
    var element = body.getChild(elementIndex);

    if (element.getType() === DocumentApp.ElementType.PARAGRAPH) {
      var paragraph = element.asParagraph();
      var text = paragraph.editAsText();
      var textStr = text.getText();

      var match;
      var regex = /\[(.*?)\]\((.*?)\)/g;

      while ((match = regex.exec(textStr)) !== null) {
        var docName = match[1];
        var docUrl = match[2];

        // Find the start and end indices of the markdown URL in the text
        var start = match.index;
        var end = start + docName.length;

        // Set the URL of the link in the text
        text.setLinkUrl(start, end, docUrl);

        // Remove the markdown URL syntax
        text.deleteText(end + 2, end + 2 + docUrl.length); // Delete URL and closing parenthesis
        text.deleteText(start, start); // Delete opening bracket
        text.deleteText(end + 1, end + 1); // Delete closing bracket
        text.deleteText(end, end); // Delete opening parenthesis

        // Update the text string to match the current state of the text

        textStr = text.getText();
        regex = /\[(.*?)\]\((.*?)\)/g; // Create a new RegExp object
      }
    }
  }
}
