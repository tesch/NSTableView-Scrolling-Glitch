This is a sample project demonstrating a view based NSTableView glitch where the currently selected row flickers while scrolling up or down with the arrow keys. Please refer to the corresponding [stackoverflow question](https://stackoverflow.com/questions/63043081/nstableview-selected-row-flickering-while-scrolling-with-arrow-keys).

The desired behavior would be for the selected row to appear 'glued' to either the top or bottom of the view, depending on scroll direction. This behavior is shown for example by the Finder in list view or by cell based NSTableView implementations.

Checkout the `glitch` tag to show the incorrect default behavior. Checkout the `fix` tag to show the workaround.

<p align="center">
    <img src="Demo.gif" width="800", max-width="100%"/>
</p>
