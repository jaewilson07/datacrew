/*
*/

function buildTable(data, columns) {
  if (!Array.isArray(data) || !data.every((x) => typeof x === "object"))
    throw Error(`Every entry in data must be an object`);

  if (!Array.isArray(columns) || !columns.every((x) => typeof x === "object"))
    throw Error("The columns parameter must be an array of objects");

  for (const column of columns) {
    if (!["field", "label"].every((field) => column.hasOwnProperty(field)))
      throw Error(
        "Each column object must have a field and label property defined"
      );
  }

  const tableHeaders = columns
    .map(
      (column) =>
        `<th style="${column.width ? `width: ${column.width}` : ""}">${
          column.label
        }</th>`
    )
    .join("");

  const tableRows = data
    .map((row) => {
      const rowCells = columns
        .map((column) => `<td>${row[column.field]}</td>`)
        .join("");
      return `<tr>${rowCells}</tr>`;
    })
    .join("");

  return `
    <table width="100%" class="domoTable">
      <thead>
        <tr>${tableHeaders}</tr>
      </thead>
      <tbody>${tableRows}</tbody>
    </table>
    <style>
      .domoTable {
        max-width: 960px;
        overflow: hidden;
        position: relative;
        border-radius: 3px;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
      }
      .domoTable thead tr {
        height: 60px;
        background-color: #9ce;
        background-image: linear-gradient(#9ce, #9ce);
      }
      .domoTable thead tr th {
        font-size: 18px;
        text-align: left;
        line-height: 1.2em;
        font-weight: unset;
        padding-left: 8px;
        color: #ffffff;
      }
      .domoTable tbody tr {
        height: 50px;
        font-size: 15px;
        line-height: 1.2em;
        font-weight: unset;
        background-image: linear-gradient(#ffffff, #ffffff);
        background-color: #ffffff;
      }
      .domoTable tbody tr:nth-child(even) {
        background-image: linear-gradient(#f5f5f5, #f5f5f5);
        background-color: #f5f5f5;
      }
      .domoTable tbody tr td {
        padding-left: 8px;
        color: #707070;
      }
    </style>
  `;
}


