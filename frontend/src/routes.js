
import Home from "./views/Home.js";
import addPost from "./views/addPost.js";
import UserProfile from "./views/UserProfile.js";

var routes = [
  {
    path: "/home",
    name: "Home",
    icon: "tim-icons icon-chart-pie-36",
    component: Home,
    layout: "/admin"
  },
  {
    path: "/addPost",
    name: "add Post",
    icon: "tim-icons icon-simple-add",
    component: addPost,
    layout: "/admin"
  },
  {
    path: "/user-profile",
    name: "User Profile",
    icon: "tim-icons icon-single-02",
    component: UserProfile,
    layout: "/admin"
  },
];
export default routes;
