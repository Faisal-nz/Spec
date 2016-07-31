Pod::Spec.new do |s|
  s.name             = "PopcornTorrent"
  s.version          = "1.1.0.2"
  s.summary          = "Torrent client for iOS and tvOS (Used by PopcornTime)"
  s.homepage         = "https://github.com/PopcornTimeTV/PopcornTorrent"
  s.license          = 'MIT'
  s.author           = { "Popcorn" => "popcorn@time.tv" }
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '9.0'

  s.default_subspec = 'tvOS'

  s.subspec 'iOS' do |is|
    is.source = { :http => "https://github.com/PopcornTimeTV/PopcornTorrent/releases/download/1.1.0.2/PopcornTorrent.framework.zip" }
    is.ios.vendored_frameworks = "Carthage/Build/iOS/PopcornTorrent.framework"
  end
  s.subspec 'tvOS' do |ts|
    ts.source = { :http => "https://github.com/PopcornTimeTV/PopcornTorrent/releases/download/1.1.0.2/PopcornTorrent-iOS.framework.zip" }
    ts.tvos.vendored_frameworks = "Carthage/Build/tvOS/PopcornTorrent.framework"
  end
end
