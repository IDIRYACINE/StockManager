
import { bootstrapGraphQl   } from "./router";


bootstrapGraphQl().then((url) => {
    console.log(`Apollo is running on ${url.url}`);
})

