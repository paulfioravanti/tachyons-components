import "tachyons"
import { Main } from "./Main.elm"

document.addEventListener("DOMContentLoaded", () => {
  const appContainer = document.querySelector("#root")

  if (appContainer) {
    const app = Main.embed(appContainer)

    app.ports.setBodyClasses.subscribe((classes) => {
      document.body.className = classes
    })
  }
})
