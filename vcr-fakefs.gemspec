#!/usr/bin/env ruby
# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vcr/fakefs/version"

Gem::Specification.new do |s|
  s.name        = "vcr-fakefs"
  s.version     = VCR::FakeFS::Version
  s.author      = "Tyler Collier"
  s.email       = "vcr-fakefs@tylercollier.com"
  s.summary     = "FakeFS plugin for VCR"
  s.description = "Persist your VCR cassettes to the real FS when using FakeFS"

  s.homepage    = "https://rubygems.org/gems/vcr-fakefs"
  s.license     = "MIT"

  s.files        = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files   = s.files.grep(%r{^spec/})
  s.require_path = "lib"

  # According to the following url, 2.2 is where VCR supported persistence
  # abstraction: https://github.com/vcr/vcr/issues/234
  s.add_dependency "vcr", ">= 2.2"
  # FakeFS 0.4.1 is where the "without" support was added.
  s.add_dependency "fakefs", "~> 0.4", ">= 0.4.1"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rspec", "~> 3.0"
end