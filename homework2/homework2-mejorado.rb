autonomousSystem =
{
  "AS3816"=> "COLOMBIA TELECOMUNICACIONES S.A. ESP",
  "AS13489"=> "EPM Telecomunicaciones S.A. E.S.P.",
  "AS10620"=>"Telmex Colombia S.A.",
  "AS19429"=> "ETB - Colombia" ,
  "AS27831"=>"Colombia Movil"
}


popularDomains = ["google.com","googleapis.com","gstatic.com","facebook.com","whatsapp.net","microsoft.com","googlevideo.com","gvt2.com","doubleclick.net","tiktokcdn.com","youtube","fbcdn.net","googleusercontent.com","ytimg.com","instagram.com","tiktokv.com","office.com","live.com","google-analitycs.com","apple.com",
"spotify.com","bing.com","msm.com","google.com.co","amazonaws.com","cloudflare.com","office.net","akamai.net","netflix.com","yahoo.com","ggpht.com","akamaiedge.net","adnxs.com","cloudfront.net","googletagmanager.com","akadns.net","appe-dns.net","office365.com","whatsapp.com","amazon-adsystem.com","taboola.com",
"google.adservices","rubiconproject.com","twitter.com","icloud.com","gvt1.com","app-measurement.com","skype.com","ampproject.org","amazon.com","criteo.com","pubmatic.com","scorecardresearch.com","cdn77.org","appflyer.com","cloudflare-dns.com","smartadserver.com","facebook.net","aaplimg.com","casalemedia.com","ntp.org",
"linkedin.com","snapchat.com","outlook.com","cdninstagram.com","windows.com","azure.com","applovin.com","roblox.com","googletagservices.com","microsoftonline.com","mozilla.com","bytefcdn-oversea.com","avast.com","demdex.net","twimg.com","unity3d.com","2mdn.net","gmail.com","msedge.net","tiktokcdn-us.com","openx.net","mcfee.com","nr-data.net","scdn.co",
"kwai.net","lencr.org","byteoversea.com","brave.com","jsdelivr.net","pinterest.com","canva.com","vungle,com","windows.net","fb.com","android.com","worldfcdn.com"]
1

departamentsAndCapitals =
{
  "Putumayo" => "Mocoa","Amazonas" => "Leticia","Cundinamarca" => "Bogotá","Vichada" => "Puerto Carreño",
  "Atlántico" => "Barranquilla","Bolívar" => "Cartagena","Boyacá" => "Tunja","Caldas" => "Manizales",
  "Caquetá" => "Florencia","Casanare" => "Yopal","Cauca" => "Popayán","Córdoba" => "Montería",
  "Cesar" => "Valledupar","Arauca" => "Arauca","Antioquia" => "Medellín",  "Nariño" => "Pasto",
  "Chocó" => "Quibdó","Norte de Santander" => "Cúcuta","Risaralda" => "Pereira","Sucre" => "Sincelejo",
  "Tolima" => "Ibagué","Guainía" => "Puerto Inírida","Meta" => "Villavicencio","Santander" => "Bucaramanga",
  "Guaviare" => "San José del Guaviare","Quindío" => "Armenia","Valle del Cauca" => "Cali","Vaupés" => "Mitú",
  "Huila" => "Neiva","San Andrés y Providencia" => "San Andrés","Magdalena" => "Santa Marta","La Guajira" => "Riohacha",
}

puts "what information do you want see?
1 para autonomous System
2 para popular Domains
3 para departament and capitals
--------------------------------------------------
"

option = gets.to_i;
case option;
  when 1
    puts "\n1 for all information \n2 for specific information \n----------------------------------------------"
    optionSystem = gets.to_i;
    if optionSystem == 1
      autonomousSystem.each do |clue, value|#each do ayuda a recorrer el hash
        puts "#{clue}: #{value}"
      end
    elsif optionSystem == 2
      puts "what date do you want see?"
        autonomousSystem.each do |clue, value| #each do ayuda a recorrer el hash
          puts "#{clue}"
        end
      puts "please write exactly\n"
      key = gets.chomp###es necesario poner el chomp porque en los puts te generan un espacio
      puts "the date in #{key} is = "
      puts autonomousSystem[key]
    else
        puts"There is no that option, try again"
    end
  when 2
    puts popularDomains
  when 3
    puts "\n1 for all information \n2 for specific information \n----------------------------------------------"
    optionDepart = gets.to_i;
    if optionDepart == 1
        puts "elegiste opcion1"#completar
        departamentsAndCapitals.each do |clue, value| #each do ayuda a recorrer el hash
          puts "#{clue}: #{value}"
        end
    elsif optionDepart == 2
        departamentsAndCapitals.each do |clue, value|
          puts "#{clue}"
        end
        puts "please write exactly\n"
        key = gets.chomp
        puts "the date in #{key} is = "
        puts departamentsAndCapitals[key]
    else
        puts"There is no that option, try again"
    end
  else
    puts "There is no that option, try again";

end


