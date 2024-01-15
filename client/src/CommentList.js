import React from "react";

const CommentList = ({ comments }) => {

  const renderedComments = comments.map((comment) => {
    return <li key={comment.id}>{comment.content}<span style={{
      fontWeight: 'bold',
      color: `${
        comment.status === "pending"
          ? "orange"
          : comment.status === "approved"
            ? "green"
            : "red"
      }`,
    }}>[{comment.status}]</span></li>;
  });

  return <ul>{renderedComments}</ul>;
};

export default CommentList;
