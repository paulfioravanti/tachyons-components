import "tachyons"
import "lazysizes/plugins/unveilhooks/ls.unveilhooks"
import "lazysizes"
import { Main } from "./Main.elm"

document.addEventListener("DOMContentLoaded", () => {
  const appContainer = document.querySelector("#root")

  if (appContainer) {
    const app = Main.embed(appContainer)

    app.ports.scrollToTopOfPage.subscribe(() => {
      window.scrollTo(0, 0)
    })

    app.ports.setBodyClasses.subscribe((classes) => {
      document.body.className = classes
    })
  }
})
