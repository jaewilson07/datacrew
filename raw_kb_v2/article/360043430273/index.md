

Intro
-------

NLQ Bots are third-party connector integrations with Buzz. You can add NLQ Bots to any conversation in Buzz. You can then ask these Bots a question in Buzz using natural language and get an immediate response based on your DataSet data.


 Many NLQ Bots in Domo use webhooks, meaning you set up an integration with a third-party system. That system then pushes notifications to the Domo conversation where the Bot has been set up.


 Because all Bots are set up differently depending on the third-party connector, the instructions provided in this topic are general for all Bots. More specific instructions for each Bot are available when you go to add a Bot in Domo.


 Adding an NLQ Bot
-------------------

Follow these instructions to add a Bot to a Buzz conversation.


**To add a Bot to Buzz,**

. Open Buzz and find the conversation where you want the Bot to post.


 For more information about locating and opening conversations, see

Chatting in Buzz

.
2. Click the details icon (

) next to the conversation name to open the Details pane.
3. Click
 **Bots**
 to expand the
 **Bots**
 section of the pane.
4. Click the "+" button.


 The
 **Add a Bot**
 dialog opens.
5. Locate the desired Bot in the dialog either by scrolling to it or entering the name in the search box.
6. Click the Bot.


 A dialog with options for configuring this Bot appears.
7. Follow the provided instructions for configuring the Bot.


 For more information about configuring NLQ for the Bot, see

Understanding NLQ

.
8. Enter a name for the Bot.


 This is the name that is shown for the Bot in the conversation.
9. Click
 **Save**
 .

The Bot is now set up, and you will receive Buzz notifications in this conversation depending on the third-party system and the triggers you have defined.


 Deleting a Bot
----------------

You can remove a Bot from a Buzz conversation quickly and easily.


**To remove a Bot from a Buzz conversation**
 ,

. Open Buzz and find the conversation where the Bot has been added.


 For more information about locating and opening conversations, see

Chatting in Buzz

.
2. Click the details icon (

) next to the  conversation name.


 The Details pane opens for the conversation.
3. Click
 **Bots**
 to expand the
 **Bots**
 section of the pane.
4. Mouse over the Bot you want to delete.
5. Click the trash can icon

.
6. Click
 **Delete**
 to confirm.

The Bot is now removed, and you will no longer receive notifications for this third-party system in this conversation.


 Understanding NLQ
-------------------

For all Bots, you configure NLQ (Natural Language Query) by entering a command name in the
 **Command Name**
 field. For many Bots, this field does not appear until you configure the webhook for the Bot.

You can enter any name in this field that you want, though it is recommended you choose something related to this connector that is short and easy to remember. Once you have configured the Bot and added a command name, you can invoke the Bot in Buzz by entering

/[commandname]

then asking your question.


 For example, let's say you have Shopify data in Domo and you want to find out how many refunds you gave during the month of March. You would first configure the Bot as explained above, being sure to enter a command in the
 **Command Name**
 field. In this example, we'll just use the name "shopify." After successfully connecting to your Shopify store and adding the Bot, you would then write a Buzz message as follows:


`/shopify how many refunds for March`


 Buzz would immediately respond with the answer to your question.


 Because NLQ Bots understand natural language, there is no required syntax for your questions. You could rephrase the above query using any of the following structures, and because the keywords ("refunds" and "march") are always present, the reply would be the same:


`/shopify how many refunds did I give in March`


`/shopify refunds for March`


`/shopify March refunds`

