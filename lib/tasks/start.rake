desc 'Start production server'
task :start do
	exec 'NODE_ENV=production NPM_CONFIG_PRODUCTION=true npm run postinstall && foreman start'
end
