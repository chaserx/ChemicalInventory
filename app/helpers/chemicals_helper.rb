module ChemicalsHelper
  def number_of_chemicals
    chemical_count = Chemical.all.size
  end
  def has_msds(arg)
    my_arg = arg
    if my_arg.msds.original_filename.nil?
      #bw image
      render :inline => "<%= image_tag('msds_bw.png') %>"
    else
      #color image
      #<%= link_to image_tag("search.gif", :border=>0), :action => 'show', :id => user %>
      render :partial => 'msdsimage', :locals => { :chemical => my_arg }
    end
  end
end
