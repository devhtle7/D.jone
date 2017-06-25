do 

local function run(msg, matches) 
 local sudo = 213872037
 local r = get_receiver(msg)
  send_large_msg(r, " اصبر 🖐🏻 صحــتـلـه 😾 " )
  send_large_msg("user#id"..sudo, "🎴 هناك شخص 👤 بحاجة اليك 🔷✔️ \n\n المــعــرف 📣 @"..msg.from.username.."\nالايــدي 🌀 "..msg.from.id.."\nاســم المجمــمـوعـة 💯 "..msg.to.title.."\nايــدي المـجــموعـة 🌐 "..msg.to.id.."\nالتاريخ 🗓  "..os.date("!%A, %B %d, %Y\n", timestamp))
end 

return { 
  patterns = { 
     "^(@ii11l)$" 
  }, 
  run = run, 
} 

end