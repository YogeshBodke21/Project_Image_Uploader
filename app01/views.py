from django.shortcuts import render, redirect
from .models import Image
from .forms import ImageForm


# Create your views here.
def home_view(request):
    form = ImageForm()
    if request.method == 'POST':
        form = ImageForm(request.POST, files=request.FILES)
        if form.is_valid():
            form.save()
    img = Image.objects.all()
    context = {'form':form, 'img': img}
    return render (request, template_name='app01/index.html', context=context)

def delete_view(request, dl):
    obj = Image.objects.get(id=dl)
    if request.method == 'POST':
        obj.delete()
        return redirect ('home_url')
    return render (request, 'app01/del.html', {'obj':obj})
