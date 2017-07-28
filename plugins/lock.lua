--@IH_Hl
--@A9_y8
local function settings(msg, target,group)
local group = load_data('bot/group.json')
pm = '🔧SuperGroup settings 🔧'
pm = pm..'\n ⚙<b>Lock Links</b> : '..group[tostring(target)]['settings']['lock_link']..'⚙'
pm = pm..'\n ⚙<b>Lock Username</b> : '..(group[tostring(target)]['settings']['lock_username'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Lock sticker</b> : '..(group[tostring(target)]['settings']['lock_sticker'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Lock Edit</b> : '..group[tostring(target)]['settings']['lock_edit']..'⚙'
pm = pm..'\n ⚙<b>Lock Fwd</b> : '..(group[tostring(target)]['settings']['lock_fwd'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Lock Spam</b> : '..(group[tostring(target)]['settings']['lock_spam'] or 'no')..'⚙'
pm = pm..'\n     🔧<b>Mute</b>🔧'
pm = pm..'\n ⚙<b>Mute All</b> : '..(group[tostring(target)]['settings']['mute_all'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Mute Photo</b> : '..(group[tostring(target)]['settings']['mute_photo'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Mute Video</b> : '..(group[tostring(target)]['settings']['mute_video'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Mute Voice</b> : '..(group[tostring(target)]['settings']['mute_voice'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Mute Document</b> : '..(group[tostring(target)]['settings']['mute_document'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Mute Audio</b> : '..(group[tostring(target)]['settings']['mute_audio'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Mute Gif</b> : '..(group[tostring(target)]['settings']['mute_gif'] or 'no')..'⚙'
pm = pm..'\n<b>  create by @deve_poent</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
end
local function lock_group_inline(msg, target)
local group = load_data('bot/group.json')
  local group_inline_lock = group[tostring(target)]['settings']['lock_inline']
  if group_inline_lock == 'yes' then
    pm = '<b>Inline</b> <b>➣➣</b> <b>lock</b>'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_inline'] = 'yes'
    save_data(_config.group.data, group)
    pm = '<b>Inline</b> <b>➣➣</b> <b>locked</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_fosh(msg, target)
local group = load_data('bot/group.json')
  local group_fosh_lock = group[tostring(target)]['settings']['lock_fosh']
  if group_fosh_lock == 'yes' then
    pm = 'تم قفل الكلام السيئ  سابقا 🔚'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_fosh'] = 'yes'
    save_data(_config.group.data, group)
    pm = 'تم قفل الكلام السيئ 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_sticker(msg, target)
local group = load_data('bot/group.json')
  local group_sticker_lock = group[tostring(target)]['settings']['lock_sticker']
  if group_sticker_lock == 'yes' then
    pm = 'تم قفل الملصقات سابقا 🔚'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_sticker'] = 'yes'
    save_data(_config.group.data, group)
    pm = 'تم قفل الملصقات 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_links(msg, target)
local group = load_data('bot/group.json')
  local group_link_lock = group[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'yes' then
    pm = 'تم قفل الروابط سابقا 🔚'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_link'] = 'yes'
    save_data(_config.group.data, group)
    pm = 'تم قفل الروابط 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_username(msg, target)
local group = load_data('bot/group.json')
  local group_username_lock = group[tostring(target)]['settings']['lock_username']
  if group_username_lock == 'yes' then
    pm = 'تم قفل اليوزر سابقا 🔚'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_username'] = 'yes'
    save_data(_config.group.data, group)
    pm = 'تم قفل اليوزر 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_edit(msg, target)
local group = load_data('bot/group.json')
  local group_edit_lock = group[tostring(target)]['settings']['lock_edit']
  if group_edit_lock == 'yes' then
    pm = 'تم قفل التعديل سابقا 🔚'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_edit'] = 'yes'
    save_data(_config.group.data, group)
    pm = 'تم قفل التعديل 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_fwd(msg, target)
local group = load_data('bot/group.json')
  local group_fwd_lock = group[tostring(target)]['settings']['lock_fwd']
  if group_fwd_lock == 'yes' then
    pm = 'تم قفل اعاده التوجيه سابقا 🔚'
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
else
    group[tostring(target)]['settings']['lock_fwd'] = 'yes'
    save_data(_config.group.data, group)
    pm = 'تم قفل اعاده التوجيه 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_links(msg, target)
local group = load_data('bot/group.json')
  local group_link_lock = group[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'no' then
    pm = '<b>Link</b> <b>➣➣</b> <b>unlock</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_link'] = 'no'
    save_data(_config.group.data, group)
    pm= '<b>Link</b> <b>➣➣</b> <b>unlocked</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_fosh(msg, target)
local group = load_data('bot/group.json')
  local group_fosh_lock = group[tostring(target)]['settings']['lock_fosh']
  if group_fosh_lock == 'no' then
    pm = 'تم فتح الكلام السيئ سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_fosh'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الكلام السيئ 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_sticker(msg, target)
local group = load_data('bot/group.json')
  local group_sticker_lock = group[tostring(target)]['settings']['lock_sticker']
  if group_sticker_lock == 'no' then
    pm = 'تم فتح الملصقات سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_sticker'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الملصقات 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_links(msg, target)
local group = load_data('bot/group.json')
  local group_link_lock = group[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'no' then
    pm = 'تم فتح الروابط سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_link'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الروابط 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_username(msg, target)
local group = load_data('bot/group.json')
  local group_username_lock = group[tostring(target)]['settings']['lock_username']
  if group_username_lock == 'no' then
    pm = 'تم فتح اليوزر سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_username'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح اليوزر 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_edit(msg, target)
local group = load_data('bot/group.json')
  local group_edit_lock = group[tostring(target)]['settings']['lock_edit']
  if group_edit_lock == 'no' then
    pm = 'تم فتح التعديل سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_edit'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح التعديل 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_fwd(msg, target)
local group = load_data('bot/group.json')
  local group_fwd_lock = group[tostring(target)]['settings']['lock_fwd']
  if group_fwd_lock == 'no' then
    pm = 'تم فتح اعاده التوجيه سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_fwd'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح اعاده التوجيه 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function lock_group_spam(msg, target)
local group = load_data('bot/group.json')
  local group_spam_lock = group[tostring(target)]['settings']['lock_spam']
  if group_spam_lock == 'yes' then
    pm = 'تم قفل الكلايش سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_spam'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل الكلايش 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unlock_group_spam(msg, target)
local group = load_data('bot/group.json')
  local group_spamlock = group[tostring(target)]['settings']['lock_spam']
  if group_spam_lock == 'no' then
    pm = 'تم فتح الكلايش سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['lock_spam'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الكلايش 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_all_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_all']
  if mute_all  == 'yes' then
    pm = 'تم قفل التحدث سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_all'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل التحدث 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_all_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_all']
  if mute_all  == 'no' then
    pm = 'تم فتح التحدث سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_all'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح التحدث  🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_photo_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_photo']
  if mute_all  == 'yes' then
    pm = 'تم قفل الصور سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_photo'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل الصور 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_photo_group(msg, target)
local group = load_data('bot/group.json')
  local mute_all = group[tostring(target)]['settings']['mute_photo']
  if mute_all  == 'no' then
    pm = 'تم فتح الصور سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_photo'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الصور 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_video_group(msg, target)
local group = load_data('bot/group.json')
  local mute_video = group[tostring(target)]['settings']['mute_video']
  if mute_video  == 'yes' then
    pm = 'تم قفل الفيديو سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_video'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل الفيديو 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_video_group(msg, target)
local group = load_data('bot/group.json')
  local mute_video = group[tostring(target)]['settings']['mute_video']
  if mute_video  == 'no' then
    pm = 'تم فتح الفيديو سابقا ��'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_video'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الفيديو 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_gif_group(msg, target)
local group = load_data('bot/group.json')
  local mute_gif = group[tostring(target)]['settings']['mute_gif']
  if mute_gif  == 'yes' then
    pm = 'تم قفل المتحركة سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_gif'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل المتحركة 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_gif_group(msg, target)
local group = load_data('bot/group.json')
  local mute_gif = group[tostring(target)]['settings']['mute_gif']
  if mute_gif  == 'no' then
    pm = 'تم فتح المتحركة سايقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_gif'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح المتحركة 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_voice_group(msg, target)
local group = load_data('bot/group.json')
  local mute_voice = group[tostring(target)]['settings']['mute_voice']
  if mute_voice  == 'yes' then
    pm = 'تم قفل الصوتيات سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_voice'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل الصوتيات 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_voice_group(msg, target)
local group = load_data('bot/group.json')
  local mute_voice = group[tostring(target)]['settings']['mute_voice']
  if mute_voice  == 'no' then
    pm = 'تم فتح الصوتيات سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_voice'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الصوتيات 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_audio_group(msg, target)
local group = load_data('bot/group.json')
  local mute_audio = group[tostring(target)]['settings']['mute_audio']
  if mute_audio  == 'yes' then
    pm = 'تم قفل الصوتيات سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_audio'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل الصوتيات 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_audio_group(msg, target)
local group = load_data('bot/group.json')
  local mute_audio = group[tostring(target)]['settings']['mute_audio']
  if mute_audio  == 'no' then
    pm = 'تم قفل الصوتيات سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_audio'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الصوتيات 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function mute_document_group(msg, target)
local group = load_data('bot/group.json')
  local mute_document = group[tostring(target)]['settings']['mute_document']
  if mute_document  == 'yes' then
    pm = 'تم قفل الملفات سابقا 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_document'] = 'yes'
    save_data(_config.group.data, group)
    pm= 'تم قفل الملفات 🔚'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function unmute_document_group(msg, target)
local group = load_data('bot/group.json')
  local mute_document = group[tostring(target)]['settings']['mute_document']
  if mute_document  == 'no' then
    pm = 'تم فتح الملفات سابقا 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  else
    group[tostring(target)]['settings']['mute_document'] = 'no'
    save_data(_config.group.data, group)
    pm= 'تم فتح الملفات 🔛'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
  end
end
local function group_settings(msg, target)
local group = load_data('bot/group.json')
pm = '🔧SuperGroup settings 🔧'
pm = pm..'\n ⚙<b>Lock Links</b> : '..group[tostring(target)]['settings']['lock_link']..'⚙'
pm = pm..'\n ⚙<b>Lock Username</b> : '..group[tostring(target)]['settings']['lock_username']..'⚙'
pm = pm..'\n ⚙<b>Lock sticker</b> : '..(group[tostring(target)]['settings']['lock_sticker'] or 'no')..'⚙'
pm = pm..'\n ⚙<b>Lock Edit</b> : '..group[tostring(target)]['settings']['lock_edit']..'⚙'
pm = pm..'\n ⚙<b>Lock Fwd</b> : '..group[tostring(target)]['settings']['lock_fwd']..'⚙'
pm = pm..'\n ⚙<b>Lock Spam</b> : '..group[tostring(target)]['settings']['lock_spam']..'⚙'
pm = pm..'\n     🔧<b>Mute</b>🔧'
pm = pm..'\n ⚙<b>Mute All</b> : '..group[tostring(target)]['settings']['mute_all']..'⚙'
pm = pm..'\n ⚙<b>Mute Photo</b> : '..group[tostring(target)]['settings']['mute_photo']..'⚙'
pm = pm..'\n ⚙<b>Mute Video</b> : '..group[tostring(target)]['settings']['mute_video']..'⚙'
pm = pm..'\n ⚙<b>Mute Voice</b> : '..group[tostring(target)]['settings']['mute_voice']..'⚙'
pm = pm..'\n ⚙<b>Mute Document</b> : '..group[tostring(target)]['settings']['mute_document']..'⚙'
pm = pm..'\n ⚙<b>Mute Audio</b> : '..group[tostring(target)]['settings']['mute_audio']..'⚙'
pm = pm..'\n ⚙<b>Mute Gif</b> : '..group[tostring(target)]['settings']['mute_gif']..'⚙'
pm = pm..'\n<b>  create by @deve_poent</b>'
tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, 'html')
end
local function run(msg, matches)
local addgroup = group[tostring(msg.chat_id)]
if addgroup and is_momod(msg) then
if matches[1] == 'settings'  then
group_settings(msg, msg.chat_id)
elseif matches[1] == 'lock' then
if matches[2] == 'lin' then
lock_group_links(msg, msg.chat_id)
elseif matches[2] == 'ed' then
lock_group_edit(msg, msg.chat_id)
elseif matches[2] == 'fh' then
lock_group_fosh(msg, msg.chat_id)
elseif matches[2] == 'in' then
lock_group_inline(msg, msg.chat_id)
elseif matches[2] == 'sti' then
lock_group_sticker(msg, msg.chat_id)
elseif matches[2] == 'fwd' then
lock_group_fwd(msg, msg.chat_id)
elseif matches[2] == 'use' then
lock_group_username(msg, msg.chat_id)
elseif matches[2] == 'spa' then
lock_group_spam(msg, msg.chat_id)
end
elseif matches[1] == 'unlock' then
if matches[2] == 'lin' then
unlock_group_links(msg, msg.chat_id,group )
elseif matches[2] == 'ed' then
unlock_group_edit(msg, msg.chat_id)
elseif matches[2] == 'fh' then
unlock_group_fosh(msg, msg.chat_id)
elseif matches[2] == 'sti' then
unlock_group_sticker(msg, msg.chat_id)
elseif matches[2] == 'fwd' then
unlock_group_fwd(msg, msg.chat_id)
elseif matches[2] == 'use' then
unlock_group_username(msg, msg.chat_id)
elseif matches[2] == 'in' then
unlock_group_inline(msg, msg.chat_id )
elseif matches[2] == 'spa' then
unlock_group_spam(msg, msg.chat_id)
end
elseif matches[1] == 'mute' then
if matches[2] == 'all' then
mute_all_group(msg, msg.chat_id)
elseif matches[2] == 'pho' then
mute_photo_group(msg, msg.chat_id)
elseif matches[2] == 'doc' then
mute_document_group(msg, msg.chat_id)
elseif matches[2] == 'gif' then
mute_gif_group(msg, msg.chat_id)
elseif matches[2] == 'aud' then
mute_audio_group(msg, msg.chat_id)
elseif matches[2] == 'voi' then
mute_voice_group(msg, msg.chat_id)
elseif matches[2] == 'vid' then
mute_video_group(msg, msg.chat_id)
end
elseif matches[1] == 'unmute' then
if matches[2] == 'all' then
unmute_all_group(msg, msg.chat_id,group )
elseif matches[2] == 'pho' then
unmute_photo_group(msg, msg.chat_id)
elseif matches[2] == 'doc' then
unmute_document_group(msg, msg.chat_id)
elseif matches[2] == 'gif' then
unmute_gif_group(msg, msg.chat_id)
elseif matches[2] == 'aud' then
unmute_audio_group(msg, msg.chat_id)
elseif matches[2] == 'voi' then
unmute_voice_group(msg, msg.chat_id)
elseif matches[2] == 'vid' then
unmute_video_group(msg, msg.chat_id)
end
end
end
end
return {
  patterns = {
    "^[/#!](lock) (.*)$",
    "^[/#!](unlock) (.*)$",
    "^[/#!](mute) (.*)$",
	"^[/#!](unmute) (.*)$",
	"^[/#!](settings)$",
"^!!!edit:[/#!](lock) (.*)$",
"^!!!edit:[/#!](unlock) (.*)$",
"^!!!edit:[/#!](mute) (.*)$",
"^!!!edit:[/#!](unmute) (.*)$",
"^!!!edit:[/#!](settings)$",
  },
  run = run
}
--@IH_Hl
--@A9_y8
