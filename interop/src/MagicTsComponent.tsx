import React from 'react';

interface Props {
  name: string;
  type?: 'person' | 'cat';
}

export default function MagicTsComponent({ name, type }: Props) {
  if (type === 'person') {
    return <div>Hello, {name}</div>
  }

  if (type === 'cat') {
    return <div>Meow, {name}</div>
  }

  return <div>Yo, {name}</div>
}
