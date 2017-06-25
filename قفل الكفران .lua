بروح كل غالي لا تحذف الحقوق @b7_78       
--]]
do
local function pre_process(msg)
local kasper = 'mate:'..msg.to.id
if msg.text:match("خرب بالله") or msg.text:match("كس دينك") or msg.text:match("خرب بدينك") or msg.text:match("خرب بربك") or msg.text:match("كس دينك") or msg.text:match("كس دينك") or msg.text:match("عير بالله") or msg.text:match("عير بربك") or msg.text:match("عير بدينك") or msg.text:match("خربالله") or msg.text:match("خبالله") or msg.text:match("خبدينك") or msg.text:match("الله الكواد") or msg.text:match("دين الكواد") or msg.text:match("بربك") or msg.text:match("بدينك") or msg.text:match("عير بدينك") or msg.text:match("كس اخت دينك") or msg.text:match("كس اخت دينك") and redis:get(kasper) and not is_momod(msg) then
delete_msg(msg.id, ok_cb, true)
end
return msg
end
local function run(msg, matches)
if is_momod(msg) and matches[1] == "nkds" or matches[1] == "قفل الكفران" then
local kasper = 'mate:'..msg.to.id
redis:set(kasper, true)
local text = 'تـ{✅}ـم تـفـ؏ـ(💡)ـيـل مـنـ{🛡}ـ؏ الـكـ(👳)ـفـران\nيـا '..(msg.from.first_name or "erorr")..'\n'
return reply_msg(msg.id, text, ok_cb, false)
end
if is_momod(msg) and matches[1] == "ukds" or matches[1] == "فتح الكفران" then
local kasper = 'mate:'..msg.to.id
redis:del(kasper)
local text = 'تـ{✅}ـم تـ؏ـطـ(📴)ـيـل مـنـ{🛡}ـ؏ الـكـ(👳)ـفـران«\nيـا '..(msg.from.first_name or "erorr")..'\n'
return reply_msg(msg.id, text, ok_cb, false)
end
end
return {
patterns ={
'^[#!/](nkds)$',
'^[#!/](ukds)$',
'^(قفل الكفران)$',
'^(فتح الكفران)$',
},
run = run,
pre_process = pre_process 
}
end
--[[
 لا تحذف الحقوق @b7_78