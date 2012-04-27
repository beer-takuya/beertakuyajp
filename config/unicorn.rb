worker_processes  4
working_directory '/home/beer/web/beertakuyajp/'

listen '/tmp/unicorn.sock'
pid '/tmp/unicorn.pid'

stdout_path '/home/beer/web/beertakuyajp/log/unicorn.stdout.log'
stderr_path '/home/beer/web/beertakuyajp/log/unicorn.stderr.log'

preload_app true
