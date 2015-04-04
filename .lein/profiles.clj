{:user {:plugins [[cider/cider-nrepl "0.9.0-SNAPSHOT"]
                  [lein-ancient "0.6.5"]]
        :dependencies [[pjstadig/humane-test-output "0.6.0"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
