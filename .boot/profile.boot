(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
       concat '[[cider/cider-nrepl "0.11.0-SNAPSHOT"]
                [refactor-nrepl "2.0.0-SNAPSHOT"]])

(swap! boot.repl/*default-middleware* conj
       'cider.nrepl/cider-middleware
       'refactor-nrepl.middleware/wrap-refactor)

(set-env! :dependencies #(conj % '[spyscope "0.1.5"]))

(require 'spyscope.core)
(boot.core/load-data-readers!)
