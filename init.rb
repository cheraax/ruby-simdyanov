#!/usr/bin/env ruby

# пишем скрипт, который будет создавать каталог с главой
# добавлять README.md и коммитить, параметры: путь и количество файлов

path = ARGV[0]
count = ARGV[1].to_i
#create directory
#выходим если не указан путь или каталог уже есть
exit if path.nil? || Dir.exist?(path)
# создаем если нет каталога
Dir.mkdir(path)
# переходим в каталог
Dir.chdir(path)
#create README
File.open("README.md", "w") {|f| f.write("### #{path}") }
#create app files
count.times {
  |i| File.open("app#{i+1}.rb", "w") {|f| f.write("#!/usr/bin/env ruby") }
}
#git
# возвращаемся на каталог выше
Dir.chdir("..")
%x(git add ./#{path} )
%x(git commit -m "init #{path} files")
%x(git push)
