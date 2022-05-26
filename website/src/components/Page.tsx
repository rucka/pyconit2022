import { Header } from '.'
import React from 'react'
import Head from 'next/head'
import { GlobalStyle } from '../style'

export function Page({ children, title }: { children: React.ReactElement; title?: string }) {
  return (
    <>
      <Head>
        <title>Pycon 2022{title ? ` - ${title}` : ''}</title>
      </Head>
      <GlobalStyle />
      <Header />
      {children}
    </>
  )
}
