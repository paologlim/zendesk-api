require 'rubygems'
require 'curb'
require 'crack'
gem 'activesupport'
require 'active_support'
require 'active_support/version'
# need to pull in the pieces we want with Rails 3
require 'active_support/core_ext' if ActiveSupport::VERSION::MAJOR == 3

ZENDESK_LIB_DIR = File.dirname(__FILE__) unless defined?(ZENDESK_LIB_DIR)

module Zendesk
  class Error < StandardError; end
  class CouldNotAuthenticateYou < StandardError; end

  autoload :User, File.join(ZENDESK_LIB_DIR, 'zendesk/user')
  autoload :UserIdentity, File.join(ZENDESK_LIB_DIR, 'zendesk/user_identity')
  autoload :Organization, File.join(ZENDESK_LIB_DIR, 'zendesk/organization')
  autoload :Group, File.join(ZENDESK_LIB_DIR, 'zendesk/group')
  autoload :Ticket, File.join(ZENDESK_LIB_DIR, 'zendesk/ticket')
  autoload :Attachment, File.join(ZENDESK_LIB_DIR, 'zendesk/attachment')
  autoload :Tag, File.join(ZENDESK_LIB_DIR, 'zendesk/tag')
  autoload :Forum, File.join(ZENDESK_LIB_DIR, 'zendesk/forum')
  autoload :Entry, File.join(ZENDESK_LIB_DIR, 'zendesk/entry')
  autoload :Search, File.join(ZENDESK_LIB_DIR, 'zendesk/search')
  autoload :Main, File.join(ZENDESK_LIB_DIR, 'zendesk/main')
end
