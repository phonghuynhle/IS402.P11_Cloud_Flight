import axios from "axios";

const instance = axios.create({
    baseURL: "http://172.205.106.116:81/api"
});

// custom response
instance.interceptors.response.use(
    (response) => {
        return response;
    },
    function (error) {
        return Promise.reject(error);
    }
);

export default instance;
