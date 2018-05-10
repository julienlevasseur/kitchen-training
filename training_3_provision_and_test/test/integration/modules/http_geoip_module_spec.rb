describe file('/etc/nginx/conf.d/http_geoip.conf') do
  it { should be_a_file }
  its(:content) { should match(%r{/srv/geoip/GeoIP.dat}) }
end

describe file('/usr/local/lib/libGeoIP.so') do
  it { should be_a_file }
end
