# Lab-Setup.ps1

#Import AWS credentials
. ./credentials.ps1
#The credentials file should contain the following two variables:
# $AWSAccessKey="" # Your access key
# $AWSSecretKey="" # Your secret key

# Set AWS credentials and region
$AWSProfileName="aws-networking-deep-dive-route-53-dns"
$AWSRegion = "us-east-1"

# Set AWS credentials and store them
Set-AWSCredential -AccessKey $AWSAccessKey -SecretKey $AWSSecretKey -StoreAs $AWSProfileName

# Load the credentials for this session
Set-AWSCredential -ProfileName $AWSProfileName

# Route 53 is not region-specific, so we won't set a default region
#Set-DefaultAWSRegion -Region $AWSRegion
#Get-DefaultAWSRegion

# Test functionality
if ((Get-EC2Vpc -Region $AWSRegion).count -ge 1) { Write-Host Connectivity to AWS established! }