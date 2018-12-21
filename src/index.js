import "tachyons"
import "lazysizes/plugins/unveilhooks/ls.unveilhooks"
import "lazysizes"
import { Elm } from "./Main.elm"

const app = Elm.Main.init()

app.ports.setBodyClasses.subscribe((classes) => {
  document.body.className = classes
})
