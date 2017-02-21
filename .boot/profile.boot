(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
       concat '[[org.clojure/tools.nrepl "0.2.12"]
                [cider/cider-nrepl "0.15.0-SNAPSHOT"]
                [refactor-nrepl "2.3.0-SNAPSHOT"]])

(swap! boot.repl/*default-middleware* conj
       'cider.nrepl/cider-middleware
       'refactor-nrepl.middleware/wrap-refactor)

(set-env! :dependencies #(conj % '[spyscope "0.1.5"]))

(require 'spyscope.core)
(boot.core/load-data-readers!)
