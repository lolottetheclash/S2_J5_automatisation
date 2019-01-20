

def check_if_user_gave_input
  abort("mkdir: donne un nom à ton dossier") if ARGV.empty?
end


def get_folder_name
  return rename = ARGV.first
end


def create_folder(rename)
	rename = get_folder_name
	# création du dossier avec texte rentré par l'utilisateur
 	Dir.mkdir("/Users/lauren/Desktop/THP/#{rename}")
 	# création du dossier lib
 	Dir.mkdir("/Users/lauren/Desktop/THP/#{rename}/lib") 
 	# création du fichier .env	
 	File.open("/Users/lauren/Desktop/THP/#{rename}/.env", "w+")
 	# création du readme
 	File.open("/Users/lauren/Desktop/THP/#{rename}/README.md", "w+")
 		# création du .gitignore et écriture du .env dans le fichier
 		File.open("/Users/lauren/Desktop/THP/#{rename}/.gitignore", "w+")do |line|
 			line.puts ".env"
 		end
 		#création du Gemfile avec tous les liens vers les gems écrits dedans
 		File.open("/Users/lauren/Desktop/THP/#{rename}/Gemfile", "w+") do |line|
 			line.puts "source \"https://rubygems.org\"\nruby '2.5.1'\ngem 'pry'\ngem 'rspec'\ngem 'pry'\ngem 'rubocop', '~> 0.57.2'\ngem 'dotenv'\ngem 'nokogiri'\ngem 'open_uri_redirections'\n"
 		end

 	# cette partie ne marche pas :(

 	# sortie du dossier actuel pour se replacer dans le dossier crée par l'utilisateur
 	Dir.chdir("/Users/lauren/Desktop/THP/#{rename}/")
 	# création du spec
 	system("rspec --init")
 	# initialisation git dans le dossier
 	system("git init")
 	# crétion du Gemfile.lock
 	system("bundle install")

end

def perform
	rename = get_folder_name
	check_if_user_gave_input
 	create_folder (rename)
end

perform