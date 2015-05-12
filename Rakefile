task :default => :install

task :install, [:dir] => [:symlink, :vundle]

task :symlink, [:dir] do |t, args|
  args.with_defaults :dir => "~"
  puts "Symlinking to #{File.expand_path(args.dir)}..."
  (Dir['*'] - %w{Rakefile README.md}).each do |file|
    target = File.expand_path(".#{file}", args.dir)
    source = File.join(Dir.pwd, file)
    `ln -s #{source} #{target}` unless File.exists?(target)
  end
  puts "done."
end

task :vundle do
  if !Dir.exists?(File.expand_path '~/.vim/bundle/Vundle.vim')
    puts "Installing Vundle..."
    `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
    puts "Installing vim plugins..."
    `vim +PluginInstall +qall`
    puts "done."
  else
    puts "Vundle already installed, done."
  end
end
