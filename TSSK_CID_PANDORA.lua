--===== TSSK STORE =====--

license = "DA6D212CE8" -- for license contact TSSK!

GROWID = "lasunamam" -- GrowID Bot 
PASSWORD = "Ren120906." -- Password Bot

SortName = true -- true = NAME URUT
START = 1 -- Bot Start number
ENDED = 5 -- Bot End Number

RandomName = false
Number = false
NameLetter = 7
HowMany = 6

customEmail = "lanamana" 
DOMAIN = "@outlook.co.id"

AUTORELOG = true -- For Trigger AAP

ClearBp = true
TrashList = {48,2,3}

SKIPTUTOR = true 
AUTOPX = true -- Drop px samping doorId
WORLDPX = "ATASBATU"
DOORID = "RENNN12"

Webhook = "https://discord.com/api/webhooks/987963466465816616/p2WoQoz1ibtlTuQx8hKjfqjY7N5fhM1qV_GenRxpjpISJ4xxIK8-hEbtNrbTGfS6G77r" -- Webhook url
ownerID = "699818298044317726" -- For Notif In Discord
TAGuser = true

--===== TSSK STORE =====--

dumb = 1
dumbi = 1
function Infobot(logs)
  if TAGuser then
    idow = "PING! <@" .. ownerID .. ">"
  elseif not Ping then
    idow = ""
  end
  local script = "      $webHookUrl = \"" .. Webhook .. [[
"
      $desc = "**<a:emoji_9:1025804280722108476> TSSK AUTO CID <a:emoji_9:1025804280722108476>**"
      $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
      $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
      $fieldArray = @(
          @{
              name = "**<:pickaxehisokagold:1025472230970359829> _INFORMATION_ <:pickaxehisokagold:1025472230970359829>**"
              value = "**]] .. logs .. [[
**"
              inline = "false"
          }
          @{
            name = "**<:dsustore:1034411779083747348> _RDP STATS_**"
            value = "**$cpu% | $ram MB**"
            inline = "true"
        }
          @{
            name = "**_OWNER SCRIPT_**"
            value = "**<a:owner:1006080524995018752> <@978148540041822238> | [DISCORD SERVER](https://discord.gg/D66Cav6ndh)**"
            inline = "false"
        }
      )
      $footer = [PSCustomObject]@{
          icon_url = "https://media.discordapp.net/attachments/998991551873175682/1042296587088572536/standard_3.gif"
          text = "]] .. "TSSK STORE | Date : " .. os.date("!%a, %b/%d/%Y at %I:%M %p", os.time() + 28800) .. [[
"
      }
      $embedObject = @{
          description = $desc
          color = "2303786"
          fields = $fieldArray
          footer = $footer

      }
      $embedArray = @($embedObject)
      $payload = @{
        'username' = 'TSSK CID'
        'content' = ']] .. idow .. [[
'
          embeds = $embedArray
      }
      [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
      Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
  ]]
  local pipe = io.popen("powershell -command -", "w")
  pipe:write(script)
  pipe:close()
end
nam = {
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z"
}
nam2 = {
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "0",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z"
}
function WearPickaxe()
  if AUTOPX then
    Infobot("TAKING PICKAXE")
    sleep(100)
    sendPacket(3, [[
action|join_request
name|]] .. WORLDPX:upper() .. "|" .. DOORID:upper() .. [[

invitedWorld|0]])
    sleep(5000)
    collect(3)
    sleep(1200)
    wear(98)
    sleep(1600)
    sendPacket(2, [[
action|drop
|itemID|98]])
    sleep(1000)
    sendPacket(2, [[
action|dialog_return
dialog_name|drop_item
itemID|98|
count|]] .. findItem(98) - 1)
    sleep(1300)
    Infobot([[
DONE WEAR PICKAXE
YOUR LAST PICKAXE : ]] .. gscan(98))
    sleep(1000)
  end
end
function StartTrash()
  if ClearBp then
    for i, trash in pairs(TrashList) do
      if 0 ~= findItem(trash) then
        sendPacket(2, [[
action|trash
|itemID|]] .. trash)
        sleep(500)
        sendPacket(2, [[
action|dialog_return
dialog_name|trash_item
itemID|]] .. trash .. [[
|
count|]] .. findItem(trash))
        sleep(200)
      end
    end
  end
end
function Log(text)
  file = io.open("tsskcid.txt", "a")
  file:write(text .. "\n")
  file:close()
end
function BD()
  for i = 0, 4 do
    punch(1, 0)
    sleep(200)
  end
end
function gscan(id)
  count = 0
  for _, obj in pairs(getObjects()) do
    if obj.id == id then
      count = count + obj.count
    end
  end
  return count
end
function text()
  for i = 10, 1, -1 do
    totTxt = totTxt .. string.char(math.random(97, 122))
  end
end
function Tutor()
  if SKIPTUTOR then
    sendPacket(2, "ftue_start_popup_close")
    sleep(1000)
    Infobot("STARTING TUTORIAL\n" .. naot() .. "\n" .. getBot().world)
    sleep(1000)
    findPath(86, 30)
    sleep(1800)
    enter()
    sleep(5000)
    findPath(46, 23)
    sleep(2000)
    BD()
    place(2, 1, 0)
    sleep(600)
    BD()
    collect(3)
    sleep(1240)
    place(3, 1, 0)
    sleep(2000)
    place(10672, 1, 0)
    sleep(1300)
    punch(1, 0)
    sleep(1200)
    move(1, 0)
    collect(2)
    sleep(2000)
    wear(48)
    sleep(3000)
    sendPacket(3, "action|quit_to_exit")
    sleep(2000)
    totTxt = ""
    text()
    sendPacket(3, [[
action|join_request
name|]] .. totTxt .. [[

invitedWorld|0]])
    sleep(5000)
    place(9640, 0, -1)
    sleep(100)
    Infobot("DONE TUTORIAL\n" .. naot() .. "\n" .. getBot().world)
    sleep(100)
  end
end
function regisA(i)
  sleep(2000)
  sendPacket(2, "action|growid")
  sleep(200)
  sendPacket(2, [[
action|dialog_return
dialog_name|growid_apply
logon|]] .. GROWID .. i .. [[

password|]] .. PASSWORD .. [[

password_verify|]] .. PASSWORD .. [[

email|]] .. customEmail .. i .. DOMAIN)
  sleep(100)
  Log(GROWID .. i .. " | " .. PASSWORD .. " | " .. customEmail .. i .. DOMAIN)
  sleep(100)
  Infobot([[
DONE CREATE BOT
GROWID : ||]] .. GROWID:upper() .. i .. [[
||
PASSWORD : ||]] .. PASSWORD .. "||")
end
function regisB()
  sleep(2000)
  sendPacket(2, "action|growid")
  sleep(200)
  sendPacket(2, [[
action|dialog_return
dialog_name|growid_apply
logon|]] .. GROWID .. [[

password|]] .. PASSWORD .. [[

password_verify|]] .. PASSWORD .. [[

email|]] .. customEmail .. DOMAIN)
  sleep(1800)
  Log(GROWID .. " | " .. PASSWORD .. " | " .. customEmail .. DOMAIN)
  sleep(100)
  Infobot([[
DONE CREATE BOT
GROWID : ||]] .. GROWID:upper() .. [[
||
PASSWORD : ||]] .. PASSWORD .. "||")
  sleep(100)
end
function regisC(i)
  local totTx = ""
  for b = dumb, NameLetter do
    if not Number then
      az = math.random(1, 26)
      totTx = totTx .. nam[az]
    elseif Number then
      az = math.random(1, 36)
      totTx = totTx .. nam2[az]
    end
  end
  sendPacket(2, "action|growid")
  sleep(200)
  sendPacket(2, [[
action|dialog_return
dialog_name|growid_apply
logon|]] .. totTx .. [[

password|]] .. PASSWORD .. [[

password_verify|]] .. PASSWORD .. [[

email|]] .. customEmail .. i .. DOMAIN)
  sleep(1800)
  Log(totTx .. " | " .. PASSWORD .. " | " .. customEmail .. i .. DOMAIN)
  sleep(1800)
  Infobot([[
DONE CREATE BOT
GROWID : ||]] .. totTx:upper() .. [[
||
PASSWORD : ||]] .. PASSWORD .. "||")
  sleep(1000)
  removeBot("")
  sleep(1000)
  if AUTORELOG then
    addBot(totTx, PASSWORD)
    sleep(3000)
    repeat
      connect()
      sleep(5000)
    until getBot().status == "aap detected" or getBot().status == "online"
    Infobot([[
SUCCESS TRIGGER AAP 
GROWID : ||]] .. totTx .. "||")
    sleep(1000)
    removeBot(totTx)
    sleep(1000)
  end
end
function naot()
  for _, player in pairs(getPlayers()) do
    return player.name
  end
end
function botstarts()
  if SortName and not RandomName then
    for i = START, ENDED do
      addBot("", "")
      sleep(1000)
      while getBot().status == "login fail" or getBot().status ~= "online" do
        connect()
        sleep(10000)
        if getBot().status == "guest error" then
          Infobot("LIMIT IP SIR :)")
          sleep(1000)
          removeBot("")
          break
        end
      end
      sleep(1000)
      Tutor()
      sleep(1000)
      StartTrash()
      sleep(1000)
      WearPickaxe()
      sleep(2000)
      regisA(i)
      sleep(1000)
      removeBot("")
      sleep(2000)
      if AUTORELOG then
        addBot(GROWID .. i, PASSWORD)
        sleep(100)
        repeat
          connect()
          sleep(5000)
        until getBot().status == "aap detected" or getBot().status == "online"
        Infobot([[
SUCCESS TRIGGER AAP 
GROWID : ||]] .. getBot().name:upper() .. "||")
        sleep(1000)
        removeBot(getBot().name)
      end
      START = START + 1
      sleep(5000)
    end
  elseif not SortName and not RandomName then
    addBot("", "")
    sleep(1000)
    while getBot().status == "login fail" or getBot().status ~= "online" do
      connect()
      sleep(6000)
      if getBot().status == "guest error" then
        Infobot("LIMIT IP SIR :)")
        sleep(1000)
        removeBot("")
        break
      end
    end
    sleep(1000)
    Tutor()
    sleep(1000)
    StartTrash()
    sleep(1000)
    WearPickaxe()
    sleep(2000)
    regisB()
    sleep(1000)
    removeBot("")
    sleep(2000)
    if AUTORELOG then
      addBot(GROWID, PASSWORD)
      sleep(100)
      repeat
        connect()
        sleep(5000)
      until getBot().status == "aap detected" or getBot().status == "online"
      Infobot([[
SUCCESS TRIGGER AAP 
GROWID : ||]] .. getBot().name:upper() .. "||")
      sleep(1000)
      removeBot(getBot().name)
    end
  elseif RandomName and not SortName then
    for i = dumbi, HowMany do
      addBot("", "")
      sleep(100)
      while getBot().status == "login fail" or getBot().status ~= "online" do
        connect()
        sleep(6000)
        if getBot().status == "guest error" then
          Infobot("LIMIT IP SIR :)")
          sleep(1000)
          removeBot("")
          break
        end
      end
      sleep(1000)
      Tutor()
      sleep(1000)
      StartTrash()
      sleep(1000)
      WearPickaxe()
      sleep(2000)
      regisC(i)
      sleep(1000)
      dumbi = dumbi + 1
      sleep(5000)
    end
  elseif RandomName and SortName then
    Infobot([[
PLEASE CHOOSE ONE MODE
SORTNAME OR RANDOMNAME]])
  end
end
res = "https://lisensisitem.theosondakh.repl.co/api/growtopia/license/$Lic"
function checkLicense()
  local script = "$Lic = \"" .. license .. [[
"
        $HWID = (Get-ItemProperty registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\ -Name MachineGuid).MachineGUID
        $Valid = "C:\Users\" + $env:UserName + "\AppData\Local\true.txt"
        $InValid = "C:\Users\" + $env:UserName + "\AppData\Local\false.txt"
        $url = "]] .. res .. [[
"
        $body = @{
            hwid = $HWID
        }
        If (Test-Path $Valid) {
            Remove-Item $Valid
        }
        If (Test-Path $InValid) {
            Remove-Item $InValid
        }
        try {
            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
            $check = Invoke-RestMethod -Uri $url -Body ($body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
            if ($check -match "$HWID") {
                New-Item $Valid -type file
                Add-Content -Path $Valid -Value "$check"
            }else{
                New-Item $InValid -type file
                Add-Content -Path $InValid -Value "$check"
            }
        } catch {
            New-Item $InValid -type file
            Add-Content -Path $InValid -Value "$HWID"
            return
        }
    ]]
  local pipe = io.popen("powershell -NoLogo -WindowStyle Hidden -ExecutionPolicy Bypass -command -", "w")
  pipe:write(script)
  pipe:close()
  function file(name)
    local f = io.open(name, "r")
    if nil ~= f then
      io.close(f)
      return true
    else
      return false
    end
  end
  local username = os.getenv("USERNAME")
  if file("C:\\Users\\" .. username .. "\\AppData\\Local\\true.txt") then
    os.remove("C:\\Users\\" .. username .. "\\AppData\\Local\\true.txt")
    Infobot("REGISTRATION SUCCESS")
    sleep(100)
    addBot("reppack66","141414RR#")
  elseif file("C:\\Users\\" .. username .. "\\AppData\\Local\\false.txt") then
    os.remove("C:\\Users\\" .. username .. "\\AppData\\Local\\false.txt")
    Infobot([[
LISENSI INVALID/EXPIRED
PLEASE CONTACT TSSK]])
  end
end
checkLicense()
