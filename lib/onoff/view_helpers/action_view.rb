module Onoff
  module ViewHelpers
    module ActionView
      def onoff(options = {})
        inner = content_tag(:span, nil, { class: "onoffswitch-inner" })
        switch = content_tag(:span, nil, { class: "onoffswitch-switch" })
        lbl =  ERB::Util.html_escape(inner)
        lbl += ERB::Util.html_escape(switch)
        label = content_tag(:label, lbl, {
          class: "onoffswitch-label", for: options[:target] })
        input = content_tag(:input, nil, {
          class: "onoffswitch-checkbox", id: options[:target] })
        lbl =  ERB::Util.html_escape(input)
        lbl += ERB::Util.html_escape(label)
        content_tag(:div, lbl, { class: "onoffswitch" })
      end
    end
  end
end
