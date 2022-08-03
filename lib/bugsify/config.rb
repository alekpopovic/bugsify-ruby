# frozen_string_literal: true

module Bugsify
  class Config
    attr_accessor :application_uid, 
                  :application_secret,
                  :application_env
  end
end