import React from "react";

const CommentList = ({ comments }) => {
  const renderedComments = comments.map((comment) => {
    return (
      <li key={comment.id}>
        {comment.comment} [
        <span
          style={{
            fontWeight: 'bold',
            color: `${
              comment.comment_status === "en attente"
                ? "orange"
                : comment.comment_status === "approuvé"
                ? "green"
                : "red"
            }`,
          }}
        >
          {comment.comment_status}
        </span>
        ]
      </li>
    );
  });

  return <ul>{renderedComments}</ul>;
};

export default CommentList;
