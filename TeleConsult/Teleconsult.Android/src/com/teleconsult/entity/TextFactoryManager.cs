using System;
using System.Collections.Generic;
using Android.Content;
using Android.Graphics;
using Android.InputMethodServices;
using Android.Util;
using Android.Views;
using Android.Widget;

namespace Teleconsult.Android
{
	public class TextFactoryManager : Java.Lang.Object, LayoutInflater.IFactory
	{
		private const int ArialNormal = 0;
		private const int ArialBold = 1;
		private const int ArialItalic = 2;
		private const int ArialBoldItalic = 3;

		private TypefaceStyle m_Style = TypefaceStyle.Normal;
		private static readonly SparseArray<Typeface> Typefaces = new SparseArray<Typeface>(4);
		private readonly Dictionary<string, Type> m_TypeList = new Dictionary<string,Type>();

		public View OnCreateView(string name, Context context, IAttributeSet attrs)
		{
			var attributeValue = attrs.GetAttributeIntValue("http://schemas.android.com/apk/res-auto", "typeface", -1);

			if (attributeValue == -1)
				return null;

			try
			{
				var view = CreateView(name, context, attrs);
				if (view == null)
					return null;

				var font = this.ObtainTypeface(context, attributeValue);
				view.SetTypeface(font, m_Style);
				return view;

			}
			catch (Exception)
			{
			}

			return null;
		}

		private TextView CreateView(string name, Context context, IAttributeSet attrs)
		{
			if (!m_TypeList.ContainsKey(name))
			{
				switch (name)
				{
				case "TextView":
					m_TypeList.Add(name, typeof(TextView));
					break;
				case "Button":
					m_TypeList.Add(name, typeof(Button));
					break;
				case "CheckedTextView":
					m_TypeList.Add(name, typeof(CheckedTextView));
					break;
				case "Chronometer":
					m_TypeList.Add(name, typeof(Chronometer));
					break;
				case "DigitalClock":
					m_TypeList.Add(name, typeof(DigitalClock));
					break;
				case "EditText":
					m_TypeList.Add(name, typeof(EditText));
					break;
				case "AutoCompleteTextView":
					m_TypeList.Add(name, typeof(AutoCompleteTextView));
					break;
				case "CheckBox":
					m_TypeList.Add(name, typeof(CheckBox));
					break;
				case "CompoundButton":
					m_TypeList.Add(name, typeof(CompoundButton));
					break;
				case "ExtractEditText":
					m_TypeList.Add(name, typeof(ExtractEditText));
					break;
				case "MultiAutoCompleteTextView":
					m_TypeList.Add(name, typeof(MultiAutoCompleteTextView));
					break;
				case "RadioButton":
					m_TypeList.Add(name, typeof(RadioButton));
					break;
				case "Switch":
					m_TypeList.Add(name, typeof(Switch));
					break;
				case "ToggleButton":
					m_TypeList.Add(name, typeof(ToggleButton));
					break;
				default:
					return null;
				}
			}

			return Activator.CreateInstance(m_TypeList[name], context, attrs) as TextView;
		}

		private Typeface ObtainTypeface(Context context, int typefaceValue)
		{
			try
			{
				Typeface typeface = Typefaces.Get(typefaceValue);
				if (typeface == null)
				{
					typeface = this.CreateTypeface(context, typefaceValue);
					Typefaces.Put(typefaceValue, typeface);
				}
				return typeface;
			}
			catch (Exception ex)
			{

			}

			return null;
		}
		private Typeface CreateTypeface(Context context, int typefaceValue)
		{
			try
			{

				Typeface typeface;
				switch (typefaceValue)
				{
				case ArialNormal:
					typeface = Typeface.CreateFromAsset(context.Assets, "fonts/arial.ttf");
					break;
				case ArialBold:
					typeface = Typeface.CreateFromAsset(context.Assets, "fonts/arialbold.ttf");
					m_Style = TypefaceStyle.Bold;
					break;
				case ArialItalic:
					typeface = Typeface.CreateFromAsset(context.Assets, "fonts/arialitalic.ttf");
					m_Style = TypefaceStyle.Italic;
					break;
				case ArialBoldItalic:
					typeface = Typeface.CreateFromAsset(context.Assets, "fonts/arial_bold_italic.ttf");
					m_Style = TypefaceStyle.BoldItalic;
					break;
				default:
					throw new ArgumentException("Unknown typeface attribute value " + typefaceValue);
				}
				return typeface;

			}
			catch (Exception)
			{
			}

			return null;
		}
	}
}

