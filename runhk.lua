--[[ 
    _____    _        _    _    _____    Dev @lIMyIl 
   |_   _|__| |__    / \  | | _| ____|   Dev @li_XxX_il
     | |/ __| '_ \  / _ \ | |/ /  _|     Dev @h_k_a
     | |\__ \ | | |/ ___ \|   <| |___    Dev @Aram_omar22
     |_||___/_| |_/_/   \_\_|\_\_____|   Dev @IXX_I_XXI
              CH > @lTSHAKEl_CH
--]]
do 
local function h_k_a(msg,matches) 
 local hash = "h_k:"..msg.from.id 
 local run = os.execute("./launch.sh"):read('*all') 
 local hka = tonumber(run)*1200 
 if matches[1] == "run" and is_sudo(msg) then 
 redis:set(hash,hka,true) 
 reply_msg(msg.id,ok_cb,true)  -- @h_k_a
 end 
end 

return { 
 patterns = { 
 "^[/#!](run)$" 
 }, 
 run = h_k_a
 } 
end 

-- تم بواسطه @h_k_a
--[[ 
    _____    _        _    _    _____    Dev @lIMyIl 
   |_   _|__| |__    / \  | | _| ____|   Dev @li_XxX_il
     | |/ __| '_ \  / _ \ | |/ /  _|     Dev @h_k_a
     | |\__ \ | | |/ ___ \|   <| |___    Dev @Aram_omar22
     |_||___/_| |_/_/   \_\_|\_\_____|   Dev @IXX_I_XXI
              CH > @lTSHAKEl_CH
--]]