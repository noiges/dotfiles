task :default => :install

task :install, [:dir] => [:symlink, :vundle]

task :symlink, [:dir] do |t, args|
  args.with_defaults :dir => "~"
  puts "Symlinking to #{File.expand_path(args.dir)}…"
  (Dir['*'] - %w{Rakefile README.md}).each do |file|
    target = File.expand_path(".#{file}", args.dir)
    source = File.join(Dir.pwd, file)
    `ln -s #{source} #{target}` unless File.exists?(target)
  end
  puts "Done."
end

task :vundle do
  if !Dir.exists?(File.expand_path '~/.vim/bundle/vundle')
    puts "Installing Vundle…"
    `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
    puts "Installing vim plugins…"
    `vim +PluginInstall +qall`
    puts "Done."
  else
    puts "Vundle already installed. Nothing to do here."
  end
end
