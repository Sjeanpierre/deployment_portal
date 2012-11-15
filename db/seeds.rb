# encoding: UTF-8

		DeploymentConfiguration.find_or_create_by_name(:created_at => Time.now.getutc,
		:deployment_profile_id => “stratos123“,:git_org => “Sage”,:git_repo_name => “na_sage_one“,:rightscale_account_id => “rs12343“,:rightscale_array_id => “202125001“,:tag_prefix => “tag“)
		
		ApiKey.find_or_create_by_name(
			:api_key => “c781f99ce7790b64948bd7d5268c7800“, 
			:created_at =>Time.now.getutc, 
			:name => “test“
		)
		
		DeploymentConfiguration.find_or_create_by_name(
			:created_at =>Time.now.getutc, 
			:deployment_profile_id => “stratos_staging_11082012“, 
			:git_org => “Sage“, 
			:git_repo_name => “na_sage_one“, 
			:rightscale_account_id => “rs12343“, 
			:rightscale_array_id => “214633001“, 
			:tag_prefix => “tag“
		)
		
		ApiKey.find_or_create_by_name(
			:api_key => “b781f99ce7790b64948cd7d5268c7600“, 
			:created_at =>Time.now.getutc, 
			:name => “stratos_staging“
		)
		
		DeploymentConfiguration.find_or_create_by_name(
			:created_at =>Time.now.getutc, 
			:deployment_profile_id => “3141592“, 
			:git_org => “roy-gunter“, 
			:git_repo_name => “lauries_movies“, 
			:rightscale_account_id => null, 
			:rightscale_array_id => “1123581321“, 
			:tag_prefix => “tag“
		)
		
		ApiKey.find_or_create_by_name(
			:api_key => “b781f99ce66610b64948cd7d5268c760“, 
			:created_at => Time.now.getutc, 
			:name => “roy“
		)
