--@aymanwasfe1
--@Mostank_GT
local function run(msg, matches)
if matches[1] == 'id'  then
tg.sendMessage(msg.chat_id, msg.id_, 1, 'your id : ['..msg.from_id..']️', 1)
end
if matches[1] == 'del' and is_momod(msg) then
   tg.deleteMessages(msg.chat_id_, {[0] = msg.reply_to_message_id_})
end
if matches[1] == 'بوت'  then
   tg.sendMessage(msg.chat_id, msg.id_, 1, 'عوفني بشغلي 👨‍💻️', 1)
end
if matches[1] == 'المطور'  then
   tg.sendMessage(msg.chat_id, msg.id_, 1, '@Ol56lO_dev', 1)
end
	if matches[1] == 'pin' and is_owner(msg) then
	    tg.pinChannelMessage(msg.chat_id_, msg.reply_to_message_id_, 1)
		tg.sendMessage(msg.chat_id_, 0, 0,  'تم تثبيت الرساله☑️', 0)
	elseif matches[1] == 'unpin' and is_owner(msg) then
	    tg.unpinChannelMessage(msg.chat_id_)
		tg.sendMessage(msg.chat_id_, 0, 0,  ' تم ازالة الرسائل المثبته❌', 0)

			end
end
return {
  patterns = {
    "^[#!/](id)$",
     "^(بوت)$",
    "^[#!/](pin)$",
    "^(المطور)$",
    "^[#!/](del)$",
    "^[#!/](unpin)$"
     
     
  },
  run = run
}
--@aymanwasfe1
--@Mostank_GT
