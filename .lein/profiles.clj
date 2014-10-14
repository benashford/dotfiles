{:user {:plugins [[cider/cider-nrepl "0.8.0-SNAPSHOT"]
                  [lein-cloverage "1.0.2"]
                  [refactor-nrepl "0.1.0"]]
        :dependencies [[pjstadig/humane-test-output "0.6.0"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
