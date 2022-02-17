import { text, withKnobs } from '@storybook/addon-knobs'
import React from 'react'
import SeeMore from './SeeMore'
import { withKnobs } from '@storybook/addon-knobs'


export default {
    title : 'molecules/See More',
    component: SeeMore,
    decorators: [withKnobs]
}

export const SeeMoreRedirect = () => {
    return (
        <SeeMore />
    )
}