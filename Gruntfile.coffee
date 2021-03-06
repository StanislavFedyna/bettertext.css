# Grunt Configuration
# http://gruntjs.com/getting-started#an-example-gruntfile

module.exports = (grunt) ->

	# Initiate the Grunt configuration.
	grunt.initConfig

		# Allow use of the package.json data.
		pkg: grunt.file.readJSON('package.json')

		# docpad variables
		docpad:
			files: [ './src/**/*.*' ]
			out: ['out']

		# optimize images if possible
		imagemin:
			src:
				options:
					optimizationLevel: 3,
				files: [
					expand: true,
					cwd: 'src/files/img/',
					src: ['**/*.{png,jpg,jpeg,gif}'],
					dest: 'src/files/img/'
				]

		# clean out dir
		clean:
			options:
				force: true
			out: ['<%= docpad.out %>']

		copy:
			bower:
				files: [
					'out/vendor/normalize.css/normalize.css':'bower_components/normalize.css/normalize.css',
				]

		# compile less
		less:
			development:
				options:
					strictMath: true
					sourceMap: true
				files: [
					"out/bettertext.css": "bettertext.less"
					"out/css/example0.css": "src/files/css/example0.less"
				]
			production:
				files: [
					"bettertext.css": "bettertext.less"
				]
		cssmin:
			options:
				sourceMap: true
			target:
				files: [
					"bettertext.min.css": "bettertext.css"
				]

		# track changes
		watch:
			out:
				files: ['<%= docpad.out %>/**/*']
				options:
					livereload: true
			less:
				files: [
					'bettertext.less'
					'src/files/css/*.less'
				]
				tasks: [
					'less:development'
					'notify:less'
				]

		# start server
		connect:
			server:
				options:
					port: 9778
					hostname: '*'
					base: '<%= docpad.out %>'
					livereload: true
					# open: true

		# generate development
		shell:
			deploy:
				options:
					stdout: true
				command: 'docpad deploy-ghpages --env static'
			docpadrun:
				options:
					stdout: true
					async: true
				command: 'docpad run'

		# notify
		notify:
			less:
				options:
					title: 'LESS'
					message: 'bettertext.css compiled'

	# measures the time each task takes
	require('time-grunt')(grunt);

	# Build the available Grunt tasks.
	grunt.loadNpmTasks 'grunt-contrib-clean'
	grunt.loadNpmTasks 'grunt-contrib-imagemin'
	grunt.loadNpmTasks 'grunt-contrib-copy'
	grunt.loadNpmTasks 'grunt-contrib-less'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-contrib-connect'
	grunt.loadNpmTasks 'grunt-contrib-cssmin'
	grunt.loadNpmTasks 'grunt-shell-spawn'
	grunt.loadNpmTasks 'grunt-newer'
	grunt.loadNpmTasks 'grunt-notify'

	# Register our Grunt tasks.
	grunt.registerTask 'deploy',			 ['clean', 'less', 'cssmin', 'shell:deploy' ]
	grunt.registerTask 'run',				 ['less', 'cssmin', 'notify:less', 'shell:docpadrun', 'watch:less']
	grunt.registerTask 'default',			 ['run']
