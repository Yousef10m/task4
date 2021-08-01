echo "Enter 1 To Convert Text Tp Speech & Press 2 To Convert Speech To Text"

read input
if [ $input = 1 ]; then

        curl -X POST -u "apikey:fayqwmqufZbsy2LmrHzWudW18DcfcdXsES8Myuvt8355"   --header "Content-Type: application/json"   --header "Accept: audio/mp3"   --header "Accept: audio/mp3"   --data "{\"text\":\"Text To Speech\"}"   --output text-to-speech.mp3  "https://api.eu-gb.text-to-speech.watson.cloud.ibm.com/instances/8d2a6a66-7357-402f-a108-fc243d9e77bd/v1/synthesize?voice=en-US_MichaelV3Voice"
        echo "speech saved at text-to-speech.mp3"                                                                                                                       
elif [ $input = 2 ]; then
        curl -X POST -u "apikey:KOPboGH08io5ESSHVHvx0GNc7IetyrnpwHGhfoCmWFMf" --header "Content-Type: audio/mp3" --data-binary @/home/yousef/Desktop/text-to-speech/text-to-speech.mp3  "https://api.eu-gb.speech-to-text.watson.cloud.ibm.com/instances/19c73d24-212f-4479-87cd-5299c094d6ed/v1/recognize" | tee speech-to-text.json
        echo "text saved at speech-to-text.json"
fi


