import React, { useState, useEffect } from "react";
import axios from "axios";
import CommentCreate from "./CommentCreate";
import CommentList from "./CommentList";
import {getActiveUri} from "./utils/getActiveUri";
import {GET_POSTS} from "./utils/portList";

const PostList = () => {
  const [posts, setPosts] = useState({});

  const fetchPosts = async () => {
    getActiveUri(GET_POSTS)
      .then( async (uri) => {
        const res = await axios.get(uri + '/posts');
        setPosts(res.data);
        console.log(res.data);
        return uri
      })
  };

  useEffect(() => {
    fetchPosts();
  }, []);

  const renderedPosts = Object.values(posts).map((post) => {
    return (
      <div
        className="card"
        style={{ width: "30%", marginBottom: "20px" }}
        key={post.id}
      >
        <div className="card-body">
          <h3>{post.post_title}</h3>
          <CommentList comments={post.comments} />
          <CommentCreate postId={post.post_id} />
        </div>
      </div>
    );
  });

  return (
    <div className="d-flex flex-row flex-wrap justify-content-between">
      {renderedPosts}
    </div>
  );
};

export default PostList;