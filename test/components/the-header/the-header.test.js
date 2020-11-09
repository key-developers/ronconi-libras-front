import TheHeader from '@/components/the-header/the-header'
import { mount } from '@vue/test-utils'

describe('Components > TheHeader', () => {
  const wrapper = mount(TheHeader)

  it('matches snapshot', () => {
    expect(wrapper.element).toMatchSnapshot()
  })
})
