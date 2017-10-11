# NOTE: Fish helper functions are your best friend here!
# see https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_seen_subcommand_from.fish
# and https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_use_subcommand.fish

complete -f -c yarn -n '__fish_use_subcommand' -a help -d 'output usage information'

#complete -f -c yarn -n '__fish_use_subcommand' -a access
#complete -f -c yarn -n '__fish_seen_subcommand_from access' -a 'public restricted grant revoke ls-packages ls-collaborators edit'

complete -f -c yarn -n '__fish_use_subcommand' -a add -d 'adds a package to use in your current project'
complete -f -c yarn -n '__fish_seen_subcommand_from add' -l dev -s D -d 'will install one or more packages in your devDependencies'
complete -f -c yarn -n '__fish_seen_subcommand_from add' -l peer -s P -d 'will install one or more packages in your peerDependencies'
complete -f -c yarn -n '__fish_seen_subcommand_from add' -l optional -s O -d 'will install one or more packages in your optionalDependencies'
complete -f -c yarn -n '__fish_seen_subcommand_from add' -l exact -s E -d 'installs the package as exact versions'
complete -f -c yarn -n '__fish_seen_subcommand_from add' -l tilde -s T -d 'installs the most recent release of the package that has the same minor version'

complete -f -c yarn -n '__fish_use_subcommand' -a autoclean -d 'frees up space by removing unnecessary files and folders from dependencies'
complete -f -c yarn -n '__fish_seen_subcommand_from autoclean' -l init -s I -d 'creates the .yarnclean file and adds the default entries'
complete -f -c yarn -n '__fish_seen_subcommand_from autoclean' -l force -s F -d 'if .yarnclean file exists run the clean process'

complete -f -c yarn -n '__fish_use_subcommand' -a bin -d 'print the folder where yarn will install executable files'

complete -f -c yarn -n '__fish_use_subcommand' -a cache -d 'manage yarn cache'
complete -f -c yarn -n '__fish_seen_subcommand_from cache' -a list -d 'print out every cached package'
complete -f -c yarn -n '__fish_seen_subcommand_from cache' -a dir -d 'print out the path where cache is stored'
complete -f -c yarn -n '__fish_seen_subcommand_from cache' -a clean -d 'clear the global cache'

complete -f -c yarn -n '__fish_use_subcommand' -a check -d 'verifies the versions of the package dependencies from package.json'
complete -f -c yarn -n '__fish_seen_subcommand_from check' -l integrity -d 'verifies that versions and hashed value of the package contents in the project’s package.json matches that of yarn’s lock file'

#complete -f -c yarn -n '__fish_use_subcommand' -a clean

complete -f -c yarn -n '__fish_use_subcommand' -a config -d 'manages the yarn config file'
complete -f -c yarn -n '__fish_seen_subcommand_from config' -a set -d 'sets the config key to a certain value'
complete -f -c yarn -n '__fish_seen_subcommand_from config' -a get -d 'echoes the value for a given key to stdout'
complete -f -c yarn -n '__fish_seen_subcommand_from config' -a delete -d 'deletes a given key from the config'
complete -f -c yarn -n '__fish_seen_subcommand_from config' -a list -d 'displays the current configuration'

complete -f -c yarn -n '__fish_use_subcommand' -a create -d 'add and use starter kit creation package'
complete -f -c yarn -n '__fish_use_subcommand' -a generate-lock-entry -d 'generates a lock file entry given the current package.json manifest file'

complete -f -c yarn -n '__fish_use_subcommand' -a global -d 'prefix used for a number of commands like add, bin, list and remove'
complete -f -c yarn -n '__fish_seen_subcommand_from global' -a add -d 'adds a package to use globally'
complete -f -c yarn -n '__fish_seen_subcommand_from global' -a bin -d 'displays the location of the yarn bin folder'
complete -f -c yarn -n '__fish_seen_subcommand_from global' -a list -d 'list globally installed packages'
complete -f -c yarn -n '__fish_seen_subcommand_from global' -a remove -d 'remove a global package that will no longer be used'
complete -f -c yarn -n '__fish_seen_subcommand_from global' -a upgrade -d 'upgrades global packages to their latest version'

complete -f -c yarn -n '__fish_use_subcommand' -a import -d 'generates `yarn.lock` from an existing npm-installed `node_modules` folder'
complete -f -c yarn -n '__fish_use_subcommand' -a info -d 'show information about a package.'

complete -f -c yarn -n '__fish_use_subcommand' -a init -d 'interactively creates or updates a package.json file'
complete -f -c yarn -n '__fish_seen_subcommand_from init' -s y -l yes -d 'skips the interactive session mentioned above and generates a package.json based on your defaults'
complete -f -c yarn -n '__fish_seen_subcommand_from init' -s p -l private -d 'the private key will be automatically set to true and you still complete the rest of the init process'

complete -f -c yarn -n '__fish_use_subcommand' -a install -d 'used to install all dependencies for a project'

complete -f -c yarn -n '__fish_use_subcommand' -a licenses -d 'List licenses for installed packages'
complete -f -c yarn -n '__fish_seen_subcommand_from licenses' -a list -d 'list in alphabetical order all of the packages and licenses'
complete -f -c yarn -n '__fish_seen_subcommand_from licenses' -a generate-disclaimer -d 'return a sorted list of licenses from all the packages'

complete -f -c yarn -n '__fish_use_subcommand' -a link -d 'symlink a package folder during development'

complete -f -c yarn -n '__fish_use_subcommand' -a list -d 'list installed packages'
complete -f -c yarn -n '__fish_seen_subcommand_from list' -l depth -d 'restrict the depth of listed dependencies'

complete -f -c yarn -n '__fish_use_subcommand' -a login -d 'store registry username and email'
complete -f -c yarn -n '__fish_use_subcommand' -a logout -d 'clear registry username and email'
complete -f -c yarn -n '__fish_use_subcommand' -a outdated -d 'checks for outdated package dependencies'

complete -f -c yarn -n '__fish_use_subcommand' -a owner -d 'manage package owners'
complete -f -c yarn -n '__fish_seen_subcommand_from owner' -a add -d 'add a user as owner of a package'
complete -f -c yarn -n '__fish_seen_subcommand_from owner' -a rm -d 'remove a user as owner of a package'
complete -f -c yarn -n '__fish_seen_subcommand_from owner' -a list -d 'list all oweners of a package'

complete -f -c yarn -n '__fish_use_subcommand' -a pack -d 'creates a compressed gzip archive of package dependencies'
complete -f -c yarn -n '__fish_seen_subcommand_from pack' -l filename -d 'creates a compressed gzip archive of package dependencies and names it <filename>'

complete -f -c yarn -n '__fish_use_subcommand' -a publish 
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l access -a 'public restricted' 
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l tag
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l new-version 
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l message 
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l no-git-tag-version 
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l access 
complete -f -c yarn -n '__fish_seen_subcommand_from publish' -l tag 

complete -f -c yarn -n '__fish_use_subcommand' -a remove 
complete -f -c yarn -n '__fish_use_subcommand' -a run 

complete -f -c yarn -n '__fish_use_subcommand' -a tag 
complete -f -c yarn -n '__fish_seen_subcommand_from tag' -a 'add rm ls' 

complete -f -c yarn -n '__fish_use_subcommand' -a team 
complete -f -c yarn -n '__fish_seen_subcommand_from team' -a 'create destroy add rm ls' 

complete -f -c yarn -n '__fish_use_subcommand' -a unlink 
complete -f -c yarn -n '__fish_use_subcommand' -a upgrade 
complete -f -c yarn -n '__fish_use_subcommand' -a upgrade-interactive 

complete -f -c yarn -n '__fish_use_subcommand' -a version
complete -f -c yarn -n '__fish_seen_subcommand_from version' -l new-version
complete -f -c yarn -n '__fish_seen_subcommand_from version' -l message
complete -f -c yarn -n '__fish_seen_subcommand_from version' -l no-git-tag-version

complete -f -c yarn -n '__fish_use_subcommand' -a versions 
complete -f -c yarn -n '__fish_use_subcommand' -a why 

# These are the yarn commands all of them use the same options
set -g yarn_cmds access add bin cache check clean config generate-lock-entry global info init install licenses link list login logout outdated owner pack publish remove run tag team unlink upgrade upgrade-interactive version versions why

# Common short, long options
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l help -s h -d 'output usage information'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l version -s V -d 'output the version number'

# The rest of common options are all of them long
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l verbose -d 'output verbose messages on internal operations'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l offline -d 'trigger an error if any required dependencies are not available in local cache'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l prefer-offline -d 'use network only if dependencies are not available in local cache'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l strict-semver
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l json
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l ignore-scripts -d 'don\'t run lifecycle scripts'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l har -d 'save HAR output of network traffic'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l ignore-platform -d 'ignore platform checks'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l ignore-engines -d 'ignore engines check'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l ignore-optional -d 'ignore optional dependencies'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l force -d 'ignore all caches'    
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l no-bin-links -d 'don\'t generate bin links when setting up packages'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l flat -d 'only allow one version of a package'  
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l production -d 'yarn will not install any package listed in devDependencies if the NODE_ENV environment variable is set to production'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l prod -d 'yarn will not install any package listed in devDependencies if the NODE_ENV environment variable is set to production'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l no-lockfile -d 'don\'t read or generate a lockfile'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l pure-lockfile -d 'don\'t generate a lockfile'           
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l frozen-lockfile -d 'don\'t generate a lockfile and fail if an update is needed'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l global-folder
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l modules-folder -d 'rather than installing modules into the node_modules folder relative to the cwd, output them here'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l cache-folder -d 'specify a custom folder to store the yarn cache'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l non-interactive -d 'Disable interactive prompts, like when there’s an invalid version of a dependency.'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l silent -d 'Run yarn install without printing installation log'

complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l mutex -d 'use a mutex to ensure only one yarn instance is executing'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l mutex -a 'file network'

complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l no-emoji -d 'disable emoji in output'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l proxy
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l https-proxy
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l no-progress -d 'disable progress bar'
complete -f -c yarn -n '__fish_seen_subcommand_from $yarn_cmds' -l network-concurrency -d 'maximum number of concurrent network requests'
complete -f -c yarn -n '__fish_seen_subcommand_from install' -l force -d 'refetches all packages, even ones that were previously installed'
