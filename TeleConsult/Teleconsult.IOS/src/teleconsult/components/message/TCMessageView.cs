using System;
using UIKit;
using System.Drawing;
using CoreGraphics;
using System.IO;
using Foundation;

namespace Teleconsult.IOS
{
	[CLSCompliant (false)]
	public class TCMessageView : UIView
	{
		public UILabel lbText { get; set; }
	
		public TCMessageView (UIColor color, string text, float sizeText, bool editText)
		{
			create (color, sizeText, editText);
			this.lbText.Text = text;
			setFrame ();
		}

		public TCMessageView (UIColor color, NSAttributedString attributedText, bool editText)
		{		
			create (color, 0.0f, editText);
			this.lbText.AttributedText = attributedText;
			setFrame ();
		}

		public override string ToString ()
		{
			string text = this.lbText.Text;
			if (text.Equals ("")) {
				text = this.lbText.AttributedText.Value;
			}

			return text;
		}

		public void addTitle(string title)
		{

		}

		private void setFrame()
		{
			CGSize _size = MUtils.getSizeText (this.lbText.AttributedText.Value, MUtils.getFontWithSize (false, 14.0f), 255);
			this.Frame = new CGRect (0.0f, 0.0f, _size.Width, _size.Height);
			this.lbText.Frame = this.Frame;
		}

		private void create (UIColor color, float sizeText, bool editText)
		{
			this.BackgroundColor = UIColor.Clear;
			this.lbText = new UILabel ();
			this.lbText.Lines = 0;
			this.lbText.Font = UIFont.FromName (MConstants.fontRegular, 14.0f);
			this.lbText.BackgroundColor = UIColor.Clear;
		
			this.AddSubview (this.lbText);
		}
	}
}

