{"filter":false,"title":"unicorn.rb","tooltip":"/config/unicorn.rb","undoManager":{"mark":0,"position":0,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":53}},"text":"worker_processes Integer(ENV[\"WEB_CONCURRENCY\"] || 3)"},{"action":"insertText","range":{"start":{"row":0,"column":53},"end":{"row":1,"column":0}},"text":"\r\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":21,"column":0}},"lines":["timeout 15","preload_app true","","before_fork do |server, worker|","  Signal.trap 'TERM' do","    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'","    Process.kill 'QUIT', Process.pid","  end","","  defined?(ActiveRecord::Base) and","    ActiveRecord::Base.connection.disconnect!","end","","after_fork do |server, worker|","  Signal.trap 'TERM' do","    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'","  end","","  defined?(ActiveRecord::Base) and","    ActiveRecord::Base.establish_connection"]},{"action":"insertText","range":{"start":{"row":21,"column":0},"end":{"row":21,"column":3}},"text":"end"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":21,"column":3},"end":{"row":21,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1403734568041,"hash":"7eb320c5ebcfa4b4802d65b80c050091df6eaa0c"}