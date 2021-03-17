Pod::Spec.new do |s|
  s.name = 'TinkoffInvestClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0' }
  s.authors = 'Oleg Belov'
  s.license = 'MIT'
  s.homepage = 'https://github.com/ThinkAndRun/tinkoff_invest_client_swift'
  s.summary = 'Tinkoff Invest OpenAPI pod'
  s.source_files = 'TinkoffInvestClient/Classes/**/*.swift'
end
