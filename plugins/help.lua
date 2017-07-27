--@IH_Hl
--@A9_y8
local function run(msg, matches)
if matches[1] == 'help' and is_owner(msg) then
 local help = [[
/promote ⇰ ⇰ لرفع ادمن
/demot     ⇰ ⇰ لتنزيل ادمن
/pin           ⇰ ⇰ لتثبيت رساله
/unpin  ⇰ ⇰ لحذف الرسائل المثبته
/settings ⇰ ⇰ لرؤية اعدادت الكروب
/id              ⇰ ⇰ لمعرفة ايديك 
/del            ⇰ ⇰ لحذف رساله بلرد
➖➖➖➖➖➖➖➖➖➖➖
/lock ed ⇰ ⇰ لقفل التعديل
/unlock  ⇰ ⇰ لفتح التعديل
/lock in  ⇰ ⇰ لقفل انلاين
/unlock in  ⇰ ⇰ لفتح انلاين
/lock lin ⇰ ⇰ لقفل الروابط
/unlock lin ⇰ ⇰ لفتح الروابط 
/lock sti ⇰ ⇰ لقفل الملصقات
/unlock sti ⇰ ⇰ لفتح الملصقات 
/lock fwd ⇰ ⇰ لقفل التوجيه 
/unlock fwd ⇰ ⇰ لفتح التوجيه
/lock use ⇰ ⇰ لقفل المعرفات 
/unlock use ⇰ ⇰ لفتح المعرفات
/lock spa ⇰ ⇰ لقفل الكلايش
/unlock spa ⇰ ⇰ لفتح الكلايش
➖➖➖➖➖➖➖➖➖➖➖
/mute all ⇰ ⇰ لقفل الكل 
/unmute all ⇰ ⇰ لفتح الكل
/mute pho ⇰ ⇰ لقفل الصور
/unmute pho ⇰ ⇰ لفتح الصور
/mute doc ⇰ ⇰ لقفل الملفات
/unmute doc ⇰ ⇰ لفتح الملفات
/mute gif ⇰ ⇰ لقفل المتحركة
/unmute gif ⇰ ⇰ لفتح المتحركة
/mute aud ⇰ ⇰ mp3 لقفل
/unmute aud ⇰ ⇰ mp3 لفتح
/mute voi ⇰ ⇰ لقفل البصمات
/unmute voi ⇰ ⇰ لفتح البصمات
/mute vid ⇰ ⇰ لقفل الفيديو
/unmute vid ⇰ ⇰ لفتح الفيديو
➖➖➖➖➖➖➖➖➖➖➖➖
DEV           ⇰ ⇰ @deve_poent
CHBOT     ⇰ ⇰ @DEV_s_o
VR=V2
]]

               tg.sendMessage(msg.chat_id_, 0, 1, help, 1, 'html')

end
end
return {
  patterns = {
    "^[#!/](help)$",
  },
  run = run
}
--@IH_Hl
--@A9_y8
