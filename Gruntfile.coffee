module.exports = (grunt) ->
  require('load-grunt-tasks') grunt
  grunt.initConfig
    express:
      web:
        options:
          script: 'build/test.js'
    watch:
      coffee:
        files: ['src/**/*.coffee']
        tasks: ['build']
    coffee:
      options:
        sourceMap: false
      default:
        files: [{
          expand: true
          cwd: 'src'
          src: ['**/*.coffee']
          dest: 'build'
          ext: '.js'
        }]
    clean:
      build: 'build'
      html: 'build/client/*/**/*.html'
    nodeunit:
      tests: ['build/test/**/*.js']
  grunt.registerTask 'build', [
    'clean:build'
    'coffee'
  ]
  grunt.registerTask 'default', [
    'build'
    'watch'
  ]
  grunt.registerTask 'test', [
    'build'
    'nodeunit'
  ]