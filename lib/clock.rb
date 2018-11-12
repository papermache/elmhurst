require 'clockwork' 

require './config/boot'
require './config/environment'
include Clockwork


every(1.day, 'fullfil_request_job.job',:at => '00:59'){FullfilRequestJob.perform_later()}