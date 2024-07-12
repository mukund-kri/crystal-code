#!/bin/crystal

require "./config/*" # here load jennifer and all required configurations
require "sam"

require "./db/migrations/*"

load_dependencies "jennifer"
