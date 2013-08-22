module.exports = (grunt) ->

  # Constants
  CQ_HOST = 'localhost'
  CQ_PORT = '4504'
  CQ_USER = 'admin'
  CQ_PASSWORD = 'admin'

  # Load grunt modules
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-sling-content'
  grunt.loadNpmTasks 'grunt-contrib-clean'

  # Project configuration
  grunt.initConfig
    shell:
      install:
        command: 'node ./node_modules/bower/bin/bower install'

    copy:
      'bootstrap-js':
        cwd: 'app/components/bootstrap/dist/js/'
        src: 'bootstrap.js'
        dest: 'app/root/etc/clientlibs/bootstrap/bootstrap/source/'
        expand: true

      'jquery-js':
        cwd: 'app/components/jquery/'
        src: 'jquery.js'
        dest: 'app/root/etc/clientlibs/bootstrap/jquery/source/'
        expand: true

      'bootstrap-css':
        cwd: 'app/components/bootstrap/dist/'
        src: [
          'css/bootstrap.css'
          'fonts/*'
        ]
        dest: 'app/root/etc/clientlibs/bootstrap/bootstrap/themes/default/'
        expand: true

    clean:
      copy: [
        'app/root/etc/clientlibs/bootstrap/jquery/source/*'
        'app/root/etc/clientlibs/bootstrap/bootstrap/source/*'
        'app/root/etc/clientlibs/bootstrap/bootstrap/themes/default/*'
        '!app/root/etc/clientlibs/bootstrap/bootstrap/themes/default/css.txt'
      ],

    'sling-content':
      options:
        host: CQ_HOST
        port: CQ_PORT
        user: CQ_USER
        pass: CQ_PASSWORD
      root: 'app/root'

  grunt.registerTask 'dist', [
    'clean:copy'
    'copy:bootstrap-js'
    'copy:bootstrap-css'
    'copy:jquery-js'
  ]
  grunt.registerTask 'install', [
    'shell:install'
  ]
  grunt.registerTask 'deploy', 'sling-content'

  grunt.registerTask 'default', [
    'install'
    'dist'
    'deploy'
  ]

