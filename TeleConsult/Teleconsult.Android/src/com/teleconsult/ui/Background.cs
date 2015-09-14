using System;
using Android.Graphics.Drawables;
using Android.Content;

namespace Teleconsult.Android
{
	[CLSCompliant(false)]			
	public class Background : StateListDrawable
	{
		public Background(Context context, int defaultDrawableId, int pressedDrawableId) {		
			// Pressed drawable
			Drawable pressedDrawable = context.Resources.GetDrawable (pressedDrawableId);
			this.AddState (new int[]{global::Android.Resource.Attribute.StatePressed }, pressedDrawable);
			// Default drawable
			Drawable defaultDrawable = context.Resources.GetDrawable (defaultDrawableId);
			this.AddState (new int[]{}, defaultDrawable);
		}
	}
}

