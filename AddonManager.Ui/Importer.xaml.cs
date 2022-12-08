// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using AddonManager.Models;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace AddonManager.Ui;
/// <summary>
/// An empty page that can be used on its own or navigated to within a Frame.
/// </summary>
public sealed partial class Importer : Page
{
    public string[] ConverterList = { "EmblemConverter", "ProfessionConverter", "DungeonConverter", "RaidConverter", "PvPConverter", "ReputationConverter" };

    public Importer()
    {
        this.InitializeComponent();

        cmbConvertType.ItemsSource = ConverterList;
        cmbConvertType.Text = "EmblemConverter";
    }


    private async void Convert_Click(object sender, RoutedEventArgs e)
    {
        var converterType = cmbConvertType.SelectedValue.ToString();
        lblStatus.Text = "Processing...";

        LootConverter converter;
        switch (converterType)
        {
            case "EmblemConverter":
                converter = new EmblemConverter();
                break;
            case "ProfessionConverter":
                converter = new ProfessionConverter();
                break;
            case "DungeonConverter":
                converter = new DungeonConverter();
                break;
            case "RaidConverter":
                converter = new RaidConverter();
                break;
            case "PvPConverter":
                converter = new PvPConverter();
                break;
            case "ReputationConverter":
                converter = new ReputationConverter();
                break;
            default:
                txtJsonToParse.Text = "Choose a converter !";
                return;
        }

        //Read file into dictionary
        await converter.Convert(txtJsonToParse.Text);

        lblStatus.Text = "Done!";
    }
}
