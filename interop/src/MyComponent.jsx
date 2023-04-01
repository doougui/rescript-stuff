import React from 'react';

export default function MyComponent({ type, name }) {
  if (type === 'user') {
    return <h1>Hello, {name}. You are an user</h1>
  }

  if (type === 'admin') {
    return <h1>Hello, {name}. You are an admin</h1>
  }

  return <h1>Hello, {name}</h1>
}
