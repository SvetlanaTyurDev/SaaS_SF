trigger LeadTrigger03 on Lead (before update) {
    for (Lead w : Trigger.new) {
        if (String.isBlank(w.Industry) && w.Rating=='Cold') {
            w.Rating = 'Hot';
        }
             if (w.Industry=='Technology' && w.Rating=='Cold') {
            w.Rating = 'Hot';
        }
                  if (w.Industry=='Finance' && w.Rating=='Cold') {
            w.Rating = 'Hot';
        }
                      
    }}