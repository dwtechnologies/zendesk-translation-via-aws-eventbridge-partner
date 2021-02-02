
ENVIRONMENT        ?= dev
PROJECT            =  eb-zendesk-trans
OWNER		   = "Customer service"
SERVICE_NAME       =  eb-zendesk-trans
ARTIFACTS_BUCKET   =  zendesk-translate-artifactory-$(ENVIRONMENT)
ARTIFACTS_PREFIX   := zendesk-translate-eventbridge-partner
ARTIFACTS_PREFIX   := $(PROJECT)/$(SERVICE_NAME)
AWS_DEFAULT_REGION ?= eu-west-1
AWS_PROFILE ?= <aws-cli profile> 


sam_package = aws --profile $(AWS_PROFILE) cloudformation package \
                --template-file template.yaml \
                --output-template-file template_out.yaml \
                --s3-bucket $(ARTIFACTS_BUCKET) \
		--s3-prefix $(ARTIFACTS_PREFIX) 

sam_deploy = aws --profile $(AWS_PROFILE) cloudformation deploy \
                --template-file template_out.yaml \
		--parameter-overrides \
			$(shell cat parameters-$(ENVIRONMENT).env) \
		--stack-name $(SERVICE_NAME)-$(ENVIRONMENT) \
		--region $(AWS_DEFAULT_REGION) \
                --capabilities CAPABILITY_IAM \
                --tags \
                        Environment=$(ENVIRONMENT) \
                        Project=$(PROJECT) \
			Owner=$(OWNER) \
                --no-fail-on-empty-changeset 

deploy:
	cd lambda && npm install
	$(call sam_package)
	$(call sam_deploy)
	@rm -rf out.yaml

clean:
	@rm -rf out.*


